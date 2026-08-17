/*
 * EML Fabric — reconfigurable translinear exp/ln compute cells
 * Copyright (c) 2026 Christof Teuscher
 * SPDX-License-Identifier: Apache-2.0
 *
 * Digital side: a 64-bit configuration scan chain in the 3.3 V (hvl)
 * domain.  3.3 V is forced by measurement, not preference: the MDAC
 * switch compliance with a 1.8 V gate tops out at 0.85-0.90 V and the
 * cell input nodes sit at 1.17-1.25 V (mdac/switch_gate_1v8.spice), so
 * every config line must swing to 3.3 V.  Putting the whole chain in
 * hvl cells needs only 4 lsbuflv2hv shifters (the ui pins); a 1.8 V
 * chain would need one per OUTPUT line (~95).
 *
 *   ui[0] = scan_data, ui[1] = scan_clk, ui[2] = scan_latch
 *   uo[0] = scan_out (readback of the shift register)
 *
 * Config map (LSB-first into the chain), 4-cell fabric:
 *   [54:0]    11 x 5-bit signed weight codes.  Chain: A -> B -> C, plus
 *             test cell T.  A is the chain root (nothing feeds it) and
 *             the B/C coupling enters ONE fixed input each (B at v, C at
 *             u — netlist fact, gen_chain.py), so only 3 gamma weights
 *             exist chip-wide.  Order:
 *               A.ua A.va B.ua B.va B.vg C.ua C.va C.ug T.ua T.va T.ug
 *             Weight code w[4:0]: w[4] = sign, w[3:2] = digit a,
 *             w[1:0] = digit b (radix-4, LSB = 1/4 unit, FS 3.75).
 *             w[3:0] read as an integer m is the magnitude: value = m/4.
 *   [57:55]   observation mux select (8 observables)
 *   [61:58]   R_ptat trim
 *   [63:62]   spare
 *
 * THERMOMETER DECODE (2 bits -> 3 lines per digit: 0->000, 1->001,
 * 2->011, 3->111) is done here so the chain carries plain binary and no
 * logic lives in the analog tile.  Decode runs off cfg_q, which only
 * changes on scan_latch — the analog sees nothing while a word shifts.
 *
 * rst_n clears the latched register: all-zero = all weights zero, mux
 * ch0 (iu monitor) — a safe, quiescent power-up state.
 *
 * Define LATCHLESS to remove the config latch bank (analog driven from
 * the shift register directly).  Saves ~60 hvl flops at the cost of
 * weights wiggling while a word shifts in — program-then-measure only.
 * Both variants are synthesized to keep the area trade measured.
 */

`default_nettype none

module tt_um_teuscher_eml_fabric (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8v power supply
    input  wire       VAPWR,    // 3.3v power supply (analog + config)
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [5:0] ua,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

  /* The configuration logic is a SEPARATE hardened macro (cfgdig), so
   * OpenLane can place-and-route it on its own; this wrapper is pure
   * structure and is never synthesised.  The four level shifters live
   * here, at the 1.8 V / 3.3 V boundary, rather than inside the macro. */
  // BINARY digit lines (2 per radix-4 digit), not thermometer (3).
  // See cfgdig.v: the MDAC switches are binary-weighted now, which
  // removes 10 nets from the capacity-limited cfgdig->MDAC corridor.
  // 5 weights now, not 11 -- see cfgdig.v (NW).  Leaving these at
  // 44/11 against a 20/5 cfgdig would leave the upper bits floating
  // and yosys would optimise the chain around them.
  wire [19:0] w_bin;
  wire [4:0]  w_sgn, w_sgnb;
  wire [7:0]  mux_oh, mux_ohb;
  wire [2:0]  rtrim;
  wire        porb, scan_out_hv;

  wire sdata_hv, sclk_hv, rstn_hv;
  (* keep *) sky130_fd_sc_hvl__lsbuflv2hv_1 u_ls_sdata (.A(ui_in[0]), .X(sdata_hv));
  /* ui_in[2], NOT ui_in[1].  ui_in[1] sits at x120.06, which is off the
   * analog macro's 0.6 um routing grid by 0.36 -- both adjacent grid
   * columns then fall inside the 0.40 via-to-via spacing, so no via can
   * be placed beside that pad and scan_clk could not be connected in the
   * layout at all.  ui_in[2] (x117.30) is exactly on grid.  MUST MATCH
   * the GDS: silicon/gen_topnets.py and layout/gen_toplevel.py. */
  (* keep *) sky130_fd_sc_hvl__lsbuflv2hv_1 u_ls_sclk  (.A(ui_in[2]), .X(sclk_hv));
  (* keep *) sky130_fd_sc_hvl__lsbuflv2hv_1 u_ls_rstn  (.A(rst_n),    .X(rstn_hv));
  (* keep *) sky130_fd_sc_hvl__lsbufhv2lv_1 u_ls_sout  (.A(scan_out_hv), .X(uo_out[0]));

  cfgdig u_cfg (
      .scan_data(sdata_hv),
      .scan_clk (sclk_hv),
      .rst_n    (rstn_hv),
      .scan_out (scan_out_hv),
      .w_bin    (w_bin),
      .w_sgn    (w_sgn),
      .w_sgnb   (w_sgnb),
      .rtrim    (rtrim),
      .porb     (porb)
  );

  assign uo_out[7:1] = 7'b0;
  assign uio_out     = 8'b0;
  assign uio_oe      = 8'b0;

  /* Analog macro (hardened GDS, LVS'd against the SPICE netlists in
   * silicon/cell + silicon/bias + silicon/mdac).  Blackbox here; the
   * decoded config lines and rst_n are the digital-to-analog interface.
   * ua[0]=x_in, ua[2]=iref_in.  ua[1] IS SPARE -- the observation mux was
   * removed from the layout (its only wired channels went to CELLA.mno /
   * CELLB.mno and emlcell_b has no mno port, so it observed nothing while
   * costing 19 of 81 nets in the most congested corner of the die).  The
   * pin exists physically and is deliberately left unconnected: driving an
   * analog node through an unbuffered pad loads it, and that has not been
   * simulated.  See silicon/gen_topnets.py OBSMUX. */
  (* blackbox *)
  eml_fabric_analog u_analog (
      .w_bin  (w_bin),
      .w_sgn  (w_sgn),
      .w_sgnb (w_sgnb),
      .rtrim  (rtrim),
      .porb   (porb),
      .x_in   (ua[0]),
      .iref_in(ua[1])
  );

endmodule

/* Level-shifter stubs so the wrapper elaborates without the PDK cells. */
(* blackbox *) module sky130_fd_sc_hvl__lsbuflv2hv_1 (input wire A, output wire X); endmodule
(* blackbox *) module sky130_fd_sc_hvl__lsbufhv2lv_1 (input wire A, output wire X); endmodule

/* Blackbox stub for synthesis/lint; replaced by the hardened macro. */
(* blackbox *)
module eml_fabric_analog (
    input  wire [19:0] w_bin,
    input  wire [4:0]  w_sgn,
    input  wire [4:0]  w_sgnb,
    input  wire [2:0]  rtrim,
    input  wire        porb,
    inout  wire        x_in,
    inout  wire        iref_in    /* mux_out removed with the obs mux */
);
endmodule
