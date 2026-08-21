/*
 * Copyright (c) 2025 Sylvain Munaut
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_tnt_mosbius (
		input  wire       VGND,
		input  wire       VDPWR,    // 1.8v power supply
		input  wire       VAPWR,    // 3.3v power supply
		input  wire [7:0] ui_in,    // Dedicated inputs
		output wire [7:0] uo_out,   // Dedicated outputs
		input  wire [7:0] uio_in,   // IOs: Input path
		output wire [7:0] uio_out,  // IOs: Output path
		output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
		inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used
		input  wire       ena,      // always 1 when the design is powered, so you can ignore it
		input  wire       clk,      // clock
		input  wire       rst_n     // reset_n - low to reset
);

	wire [191:0] ctrl;
	wire [6:1] bus_A;
	wire [6:1] bus_B;
	wire k_one;
	wire k_zero;

	// Control
	ctrl_top ctrl_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (clk),
		.rst_n    (rst_n),
		.enable   (ui_in[1]),
		.data_in  (ui_in[0]),
		.data_out (uo_out[0]),
		.ctrl_out (ctrl),
	);

	// Analog
	mosbius mosbius_I (
		.VGND              (VGND),
		.VDPWR             (VDPWR),
		.VAPWR             (VAPWR),

		.bus_A             (bus_A),
		.bus_B             (bus_B),
		.ibias             (ua[0]),

		.cfga_otan_inp     ({ctrl[ 22], ctrl[ 20], ctrl[ 18]}),											// [3:1]
		.cfga_otan_outp    ({ctrl[ 11], ctrl[  9], ctrl[  7], ctrl[ 10], ctrl[  8], ctrl[  6]}),		// [6:1]
		.cfga_mirn_a       ({ctrl[ 65], ctrl[ 63], ctrl[ 61], ctrl[ 64], ctrl[ 62], ctrl[ 60]}),		// [6:1]
		.cfga_mirp_a       ({ctrl[113], ctrl[111], ctrl[109], ctrl[112], ctrl[110], ctrl[108]}),		// [6:1]
		.cfga_dpn_inp      ({ctrl[ 76], ctrl[ 74], ctrl[ 72]}),											// [3:1]
		.cfga_dpn_outp     ({ctrl[ 83], ctrl[ 81], ctrl[ 79], ctrl[ 82], ctrl[ 80], ctrl[ 78]}),		// [6:1]
		.cfga_dpp_inp      ({ctrl[ 94], ctrl[ 92], ctrl[ 90]}),											// [3:1]
		.cfga_dpp_outp     ({ctrl[101], ctrl[ 99], ctrl[ 97], ctrl[100], ctrl[ 98], ctrl[ 96]}),		// [6:1]
		.cfga_nfeta_d      ({ctrl[ 35], ctrl[ 33], ctrl[ 31], ctrl[ 34], ctrl[ 32], ctrl[ 30]}),		// [6:1]
		.cfga_nfeta_g      ({ctrl[ 59], ctrl[ 57], ctrl[ 55], ctrl[ 58], ctrl[ 56], ctrl[ 54]}),		// [6:1]
		.cfga_nfeta_s      ({ctrl[ 29], ctrl[ 27], ctrl[ 25], ctrl[ 28], ctrl[ 26], ctrl[ 24]}),		// [6:1]
		.cfga_pfeta_d      ({ctrl[149], ctrl[147], ctrl[145], ctrl[148], ctrl[146], ctrl[144]}),		// [6:1]
		.cfga_pfeta_g      ({ctrl[125], ctrl[123], ctrl[121], ctrl[124], ctrl[122], ctrl[120]}),		// [6:1]
		.cfga_pfeta_s      ({ctrl[155], ctrl[153], ctrl[151], ctrl[154], ctrl[152], ctrl[150]}),		// [6:1]

		.cfgb_otan_inm     ({ctrl[ 23], ctrl[ 21], ctrl[ 19]}),											// [3:1]
		.cfgb_otan_outm    ({ctrl[ 17], ctrl[ 15], ctrl[ 13], ctrl[ 16], ctrl[ 14], ctrl[ 12]}),		// [6:1]
		.cfgb_mirn_b       ({ctrl[ 71], ctrl[ 69], ctrl[ 67], ctrl[ 70], ctrl[ 68], ctrl[ 66]}),		// [6:1]
		.cfgb_mirp_b       ({ctrl[119], ctrl[117], ctrl[115], ctrl[118], ctrl[116], ctrl[114]}),		// [6:1]
		.cfgb_dpn_inm      ({ctrl[ 77], ctrl[ 75], ctrl[ 73]}),											// [3:1]
		.cfgb_dpn_outm     ({ctrl[ 89], ctrl[ 87], ctrl[ 85], ctrl[ 88], ctrl[ 86], ctrl[ 84]}),		// [6:1]
		.cfgb_dpp_inm      ({ctrl[ 95], ctrl[ 93], ctrl[ 91]}),											// [3:1]
		.cfgb_dpp_outm     ({ctrl[107], ctrl[105], ctrl[103], ctrl[106], ctrl[104], ctrl[102]}),		// [6:1]
		.cfgb_nfetb_d      ({ctrl[ 47], ctrl[ 45], ctrl[ 43], ctrl[ 46], ctrl[ 44], ctrl[ 42]}),		// [6:1]
		.cfgb_nfetb_g      ({ctrl[ 53], ctrl[ 51], ctrl[ 49], ctrl[ 52], ctrl[ 50], ctrl[ 48]}),		// [6:1]
		.cfgb_nfetb_s      ({ctrl[ 41], ctrl[ 39], ctrl[ 37], ctrl[ 40], ctrl[ 38], ctrl[ 36]}),		// [6:1]
		.cfgb_pfetb_d      ({ctrl[137], ctrl[135], ctrl[133], ctrl[136], ctrl[134], ctrl[132]}),		// [6:1]
		.cfgb_pfetb_g      ({ctrl[131], ctrl[129], ctrl[127], ctrl[130], ctrl[128], ctrl[126]}),		// [6:1]
		.cfgb_pfetb_s      ({ctrl[143], ctrl[141], ctrl[139], ctrl[142], ctrl[140], ctrl[138]}),		// [6:1]

		.cfg_bus_pwr       ({ctrl[170], ctrl[169], ctrl[168], ctrl[174], ctrl[173], ctrl[172]}),		// [6:1]
		.cfg_bus_short     ({ctrl[  5], ctrl[  3], ctrl[  1], ctrl[  4], ctrl[  2], ctrl[  0]}),		// [6:1]

		.ctrl_otan_tail    ({ctrl[183], ctrl[182]}),		// [1:0]
		.ctrl_otan_mode    ({ctrl[191], ctrl[190]}),		// [1:0]
		.ctrl_mirp_a       ({ctrl[167], ctrl[166]}),		// [1:0]
		.ctrl_mirn_a       ({ctrl[179], ctrl[178]}),		// [1:0]
		.ctrl_mirp_b       ({ctrl[165], ctrl[164]}),		// [1:0]
		.ctrl_mirn_b       ({ctrl[177], ctrl[176]}),		// [1:0]
		.ctrl_dpp_tail     ({ctrl[163], ctrl[162]}),		// [1:0]
		.ctrl_dpn_tail     ({ctrl[181], ctrl[180]}),		// [1:0]
		.ctrl_dpp_source   ( ctrl[171]),
		.ctrl_dpn_source   ( ctrl[175]),
		.ctrl_pfeta_source ( ctrl[158]),
		.ctrl_nfeta_source ( ctrl[187]),
		.ctrl_pfeta_width  ({ctrl[156], ctrl[157]}),		// [1:0]
		.ctrl_nfeta_width  ({ctrl[188], ctrl[189]}),		// [1:0]
		.ctrl_pfetb_source ( ctrl[159]),
		.ctrl_nfetb_source ( ctrl[186]),
		.ctrl_pfetb_width  ({ctrl[160], ctrl[161]}),		// [1:0]
		.ctrl_nfetb_width  ({ctrl[184], ctrl[185]})			// [1:0]
	);

	assign ua[1] = bus_A[1];
	assign ua[2] = bus_A[3];
	assign ua[3] = bus_A[5];
	assign ua[4] = bus_B[2];
	assign ua[5] = bus_B[4];

	// Tie off unused outputs
	sky130_fd_sc_hd__conb_1 tie_I (
		.HI   (k_one),
		.LO   (k_zero),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);

	assign uio_out = {8{k_zero}};
	assign uio_oe  = {8{k_zero}};

	assign uo_out[7:1] = {7{k_zero}};

endmodule /* tt_um_tnt_mosbius */
