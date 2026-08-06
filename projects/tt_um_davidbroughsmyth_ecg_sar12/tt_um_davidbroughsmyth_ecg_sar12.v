/*
 * Copyright (c) 2025 davidbroughsmyth
 * SPDX-License-Identifier: Apache-2.0
 *
 * Tiny Tapeout wrapper: 12-bit ~500 SPS SAR ADC companion for
 * tt_um_snn_lif_neuron (SNN heart monitor).
 *
 * Digital outputs mirror the SNN ADC consumer bus:
 *   uo[7:0]      = adc[7:0]
 *   uio_out[3:0] = adc[11:8]
 *   uio_out[4]   = sample_en
 *
 * Analog (silicon):
 *   ua[0] = vin_ecg
 *   ua[1] = vref
 *
 * RTL sim uses analog_frontend_stub + DIGITAL_CMP_MODEL.
 * Silicon: replace stub with SPICE/layout AFE (see analog/).
 */

`default_nettype none

module tt_um_davidbroughsmyth_ecg_sar12 (
    input  wire       VGND,
    input  wire       VDPWR,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    wire rst = ~rst_n;

    reg [11:0] vin_analog_code;

    wire convert_strobe;
    wire [11:0] adc_data;
    wire        sample_en;
    wire        busy;
    wire        sample;
    wire [11:0] dac_bits;
    wire        cmp_out;

    // Digital vin proxy for stub / bring-up (even codes via <<1)
    wire [11:0] vin_from_pins = {uio_in[7:5], ui_in} << 1;

    rate_divider #(
        .CLK_HZ(50_000_000),
`ifdef FAST_SIM
        .SAMPLE_HZ(250_000)
`else
        .SAMPLE_HZ(500)
`endif
    ) u_rate (
        .clk(clk),
        .rst(rst),
        .convert_strobe(convert_strobe)
    );

    always @(posedge clk) begin
        if (rst)
            vin_analog_code <= 12'd2048;
        else if (!busy)
            vin_analog_code <= vin_from_pins;
    end

    // Behavioral AFE (RTL). Silicon swaps this for analog/sar_afe macro.
    analog_frontend_stub u_afe (
        .clk(clk),
        .rst(rst),
        .sample(sample),
        .dac_bits(dac_bits),
        .vin_code(vin_analog_code),
        .ua_vin_ecg(ua[0]),
        .ua_vref(ua[1]),
        .cmp_out(cmp_out)
    );

    sar_fsm u_sar (
        .clk(clk),
        .rst(rst),
        .convert_strobe(convert_strobe),
        .vin_code(vin_analog_code),
        .cmp_out(cmp_out),
        .sample(sample),
        .dac_bits(dac_bits),
        .adc_out(adc_data),
        .sample_en(sample_en),
        .busy(busy)
    );

    assign uo_out  = adc_data[7:0];
    assign uio_out = {3'b000, sample_en, adc_data[11:8]};
    assign uio_oe  = 8'b00011111;

    wire _unused = &{ena, VGND, VDPWR, ua[7:2], uio_in[4:0], 1'b0};

endmodule
