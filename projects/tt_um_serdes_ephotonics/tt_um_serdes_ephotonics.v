// ============================================================================
// src/project.v -- top-level SOURCE for LVS (gate-level assembly view)
// ----------------------------------------------------------------------------
// This is the "intent" side of the top-level LVS: the digital macro plus the
// two analog cells, wired exactly as the layout was built. Netgen compares
// this (with the GL netlist + analog spice read alongside) against the
// extracted layout of tt_um_serdes_ephotonics.
//
// IMPORTANT: diff this module's PORT LIST against the stub project.v that
// shipped in the ttsky-analog-template (src/project.v) and mirror any
// differences in the header -- the template defines the required interface
// (notably the ua bus and power pin conventions for GL/LVS builds).
// ============================================================================

`default_nettype none

module tt_um_serdes_ephotonics (
`ifdef USE_POWER_PINS
    inout  wire       VDPWR,    // 1.8V power  (template stripe port)
    inout  wire       VGND,     // ground      (template stripe port)
`endif
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua,       // analog pins; [0]=driver out, [1]=slicer in
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // serial nets stitched in layout between macro and analog cells
    wire tx_serial;   // macro -> tx_driver.tx_in
    wire rx_serial;   // rx_frontend.rx_out -> macro

    // ---- hardened digital macro (gate-level netlist read separately) ----
    serdes_digital u_digital (
`ifdef USE_POWER_PINS
        .VPWR      (VDPWR),
        .VGND      (VGND),
`endif
        .clk       (clk),
        .rst_n     (rst_n),
        .ena       (ena),
        .ui_in     (ui_in),
        .uo_out    (uo_out),
        .uio_in    (uio_in),
        .uio_out   (uio_out),
        .uio_oe    (uio_oe),
        .tx_serial (tx_serial),
        .rx_serial (rx_serial)
    );

    // ---- hand-drawn analog cells (spice netlists read separately) ----
    // tx_driver ports (layout extraction order): tx_in tx_out VDD GND
    tx_driver u_txdrv (
        .tx_in  (tx_serial),
        .tx_out (ua[0]),
        .VDD    (VDPWR),
        .GND    (VGND)
    );

    // rx_frontend ports (layout extraction order): VDD GND rx_in rx_out
    rx_frontend u_rxfe (
        .VDD    (VDPWR),
        .GND    (VGND),
        .rx_in  (ua[1]),
        .rx_out (rx_serial)
    );

endmodule

`default_nettype wire
