/*
 * Copyright (c) 2026 Anton Maurovic
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

(* blackbox *) (* keep *)
module coming_soon ();
endmodule

//////// !!NOTE!! This isn't the real module.
// This 1x1 tile is a custom layout, and this file
// is just included here to keep various scripts happy.
// The real layout is supplied directly as
//    ./gds/tt_um_algofoogle_ttsky26c_analog.gds
// and is generated from
//    ./magic/tt_um_algofoogle_ttsky26c_analog.mag
//
module tt_um_algofoogle_ttsky26c_analog (
    input  wire       VGND,
    input  wire       VDPWR,    // 3.3v core power supply
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  (* keep *)
  coming_soon coming_soon_0();

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out[7]  = VGND;
  assign uo_out[6]  = VGND;
  assign uo_out[5]  = VGND;
  assign uo_out[4]  = VGND;
  assign uo_out[3]  = VGND;
  assign uo_out[2]  = VGND;
  assign uo_out[1]  = VGND;
  assign uo_out[0]  = VGND;

  assign uio_out[7] = VGND;
  assign uio_out[6] = VGND;
  assign uio_out[5] = VGND;
  assign uio_out[4] = VGND;
  assign uio_out[3] = VGND;
  assign uio_out[2] = VGND;
  assign uio_out[1] = VGND;
  assign uio_out[0] = VGND;

  assign uio_oe[7]  = VGND;
  assign uio_oe[6]  = VGND;
  assign uio_oe[5]  = VGND;
  assign uio_oe[4]  = VGND;
  assign uio_oe[3]  = VGND;
  assign uio_oe[2]  = VGND;
  assign uio_oe[1]  = VGND;
  assign uio_oe[0]  = VGND;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, ui_in, uio_in, 1'b0};

endmodule
