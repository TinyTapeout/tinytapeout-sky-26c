/*
 * Copyright (c) 2026 wecallemjazzyfact
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_wecallemjazzyfact_bgr_ldo (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8v power supply
    input  wire       VAPWR,    // 3.3v power supply (analog 3.3V rail)
    input  wire [7:0] ui_in,    // Dedicated inputs: ui_in[3:0]=trim[4:1], ui_in[4]=snk_en, ui_in[5]=ro_en, ui_in[6]=trim5, ui_in[7]=trim0
    output wire [7:0] uo_out,   // Dedicated outputs: uo_out[0] = div_out
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua,       // Analog pins: ua[0] = VDDC (1.8V output), ua[1] = VREF_LOW (1.2V reference)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // Tie off unused digital outputs to VGND per TinyTapeout analog guardrails
    assign uo_out[7:1] = 7'b0;
    assign uio_out     = 8'b0;
    assign uio_oe      = 8'b0;

endmodule
