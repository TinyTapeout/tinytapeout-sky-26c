<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any sections that don't apply.

You can also include images in this folder and reference them in the markdown. Each image must be less than 512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a 4-bit neural network MAC (Multiply-Accumulate) accelerator with ReLU activation. It supports four operations controlled by a 2-bit opcode on `ui_in[7:6]`:

- **IDLE (00):** Hold current state, no operation performed.
- **LOAD_BIAS (01):** Load an 8-bit signed bias value from `uio_in[7:0]` into the internal accumulator.
- **MAC (10):** Multiply a 4-bit signed weight (`uio_in[7:4]`) by a 4-bit signed activation/feature (`uio_in[3:0]`) and accumulate: `accumulator += weight * feature`.
- **ACTIVATE (11):** Apply a right-shift by `ui_in[2:0]` bits (quantization) and then ReLU activation. Results are clamped to [0, 7]. The 4-bit result is output on `uo_out[3:0]`.

The internal accumulator is 11 bits wide to prevent overflow during accumulation. The output register (`uo_out[7:4]` is always 0, the result appears in `uo_out[3:0]`).

## How to test

1. Assert `rst_n` low for at least 10 clock cycles to reset the accumulator and output to zero.
2. Release reset (`rst_n` = 1) and verify `uo_out` = 0.
3. **Load a bias:** Set `ui_in = 0x40` (opcode=LOAD_BIAS, shift=0) and `uio_in` to the desired signed bias byte. Pulse the clock.
4. **Perform a MAC operation:** Set `ui_in = 0x80` (opcode=MAC) and `uio_in[7:4]` = weight, `uio_in[3:0]` = feature. Pulse the clock. Repeat for multiple MAC operations.
5. **Activate:** Set `ui_in = 0xC0 | shift_val` (opcode=ACTIVATE, shift=shift_val). Pulse the clock twice. Read `uo_out[3:0]` for the ReLU-activated quantized result.

Example: LOAD_BIAS=0, MAC(weight=3, feature=2), ACTIVATE(shift=0) → output = 6.
Example: LOAD_BIAS=0, MAC(weight=-1, feature=4), ACTIVATE(shift=0) → output = 0 (ReLU clips negative).

## External hardware

None required. All inputs and outputs use the standard TinyTapout IO pins.
