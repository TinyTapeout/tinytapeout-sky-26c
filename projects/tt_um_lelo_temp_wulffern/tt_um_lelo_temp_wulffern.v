/*
 * Copyright (c) 2026 Carsten Wulff
 * SPDX-License-Identifier: Apache-2.0
 *
 * Analog project: this module is a stub; the design is the GDS.
 * PWRUP_ANA (ui_in[0]) powers the analog core up; OSC_TEMP
 * (uo_out[0]) is the temperature-dependent oscillator output.
 */

`default_nettype none

module tt_um_lelo_temp_wulffern (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8v power supply
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

endmodule
