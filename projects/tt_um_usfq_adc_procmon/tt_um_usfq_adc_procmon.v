/*
 * Copyright (c) 2026
 * Esteban Astudillo
 * Raul Villalba
 * Diego Guevara B.
 * Emilia Casares L.
 *
 * Supervision: Eduardo Holguin
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_usfq_adc_procmon (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8 V power supply

    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs

    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (all configured as outputs)

    inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used

    input  wire       ena,      // High when the design is enabled
    input  wire       clk,      // System/reference clock
    input  wire       rst_n     // Active-low reset
);

endmodule

`default_nettype wire