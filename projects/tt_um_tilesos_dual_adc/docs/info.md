<!---
This file generates the project datasheet. Images in this folder can be
referenced in markdown; each must be under 512 kB and all images together must
be under 1 MB.
-->

## How it works

This project compares two independent first-order noise-shaping ADC
architectures on the same die and with the same external input.

**Shared input.** `ua[0]` drives both converter front ends. The final design
must isolate switched-capacitor kickback from the VCO control path so that the
two converters do not materially disturb each other.

**Path A — VCO-based ADC (`uo_out[0]`).** A voltage-controlled,
current-starved ring oscillator converts input voltage to frequency. The raw
pulse train is exported and counted over fixed windows by off-chip capture
hardware. Static calibration can compensate for the nonlinear voltage-to-
frequency curve.

**Path B — first-order delta-sigma modulator (`uo_out[1]`).** A
switched-capacitor integrator, comparator, and one-bit feedback DAC form the
modulator loop. Off-chip low-pass filtering and decimation recover the output
samples.

**Debug output.** `ua[1]` monitors the delta-sigma integrator through a
high-impedance buffer. The internal integrator node must not be connected
directly to the pad.

**Timing.** `clk` is the nominal 1 MHz delta-sigma sampling clock. The VCO is
asynchronous to `clk`; its count windows are created off-chip. `rst_n` resets
the clocked state and places the analog loop in a defined startup condition.

The initial performance targets are approximately 9-bit ENOB for the
delta-sigma path and at least 8-bit ENOB for the calibrated VCO path. These are
targets until supported by PVT, mismatch, and post-layout simulation results.

## How to test

1. Apply 1.8 V to VDPWR and ground to VGND.
2. Hold `rst_n` low, apply a nominal 1 MHz clock to `clk`, then release reset.
3. Drive a slow, band-limited signal into `ua[0]` within the characterized
   input range. The final datasheet will state that range and common-mode
   requirement.
4. Capture `uo_out[0]`, count rising edges over fixed off-chip windows, and
   apply the characterized voltage-to-frequency calibration.
5. Capture `uo_out[1]` and run it through the selected sinc/FIR decimation
   filter.
6. If needed, observe the buffered loop monitor at `ua[1]` with a
   high-impedance instrument.
7. Compare SNR, ENOB, linearity, and noise-shaping slope for the two paths
   under the same input stimulus.

## External hardware

- A band-limited analog signal source for `ua[0]`.
- A clock source for `clk`.
- FPGA or logic-analyzer capture for the VCO pulse train and delta-sigma
  bitstream.
- Off-chip processing for decimation, calibration, and FFT analysis.
- Tiny Tapeout demo and analog breakout boards.