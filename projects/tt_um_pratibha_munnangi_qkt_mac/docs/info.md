<!---
Datasheet for tt_um_pratibha_munnangi_qkt_mac.
-->

## How it works

This chip is a **1×4 INT4 signed dot-product MAC** with an INT32 accumulator — the compute kernel at the heart of transformer self-attention (QKᵀ).

The datapath runs a 3-stage pipeline: four parallel INT4×INT4 signed multiplies, a 4-input adder tree, and an INT32 accumulate. A Q register holds the query nibble-vector and is reused across many streaming K vectors — the same Q-row reuse pattern used in real attention accelerators, just in miniature.

The chip has a **stateless streaming byte interface**: commands are decoded per cycle over 3 bits, and one nibble of data enters per cycle via the low half of `ui_in`. Four supported commands: `LOAD_Q` (shift a nibble into Q), `LOAD_K` (shift into K; the pipeline fires automatically on the 4th nibble), `RESET_ACC` (clear the accumulator without disturbing Q), and `READ_ACC` (stream the 32-bit accumulator out MSB-first over 4 cycles on `uo_out`).

Signed arithmetic throughout: INT4 operand range `[-8, +7]`, INT8 product, INT10 partial sum, INT32 accumulator with saturating overflow-detect flag.

Design closes cleanly at **100 MHz** on sky130 (setup slack +4.8 ns typical, +1.0 ns slow-slow) with 0 DRC / 0 LVS / 0 antenna violations, at ~77% single-tile utilization.

## How to test

Drive the interface from a microcontroller or the demoboard's RP2040:

1. **Assert reset** (`rst_n` low) for at least a few cycles, then release.
2. **Load Q** — send `cmd=1, valid_in=1` four times, one nibble per cycle in `ui_in[3:0]`. Q persists across many K vectors, so you only need to do this once per query row.
3. **Load K** — send `cmd=2, valid_in=1` four times with one K nibble per cycle. After the 4th nibble, the pipeline fires; the `done` output (`uio_out[7]`) pulses ~4 cycles later.
4. **Repeat step 3** for as many K vectors as you want; each result accumulates.
5. **Read the accumulator** — send `cmd=3, valid_in=1` once. The 32-bit signed result streams out on `uo_out` MSB-first over the next 4 cycles.
6. **Clear the accumulator** with `cmd=4` between rows (Q is preserved).

Command encoding (on `uio_in[2:0]`): 1=LOAD_Q, 2=LOAD_K, 3=READ_ACC, 4=RESET_ACC. Assert `valid_in` on `uio_in[3]` when driving a command. Status flags on the upper `uio_out` bits: `ready_out[4]`, `busy[5]`, `overflow[6]`, `done[7]`.

Example: to compute q·k for q = [1, 2, 3, 4] and k = [7, 7, 7, 7], load nibbles 1,2,3,4 with LOAD_Q; then 7,7,7,7 with LOAD_K; wait for done; issue READ_ACC and read four bytes → 0x00000046 (= 70).

Full cocotb testbench with directed and randomized regression is in `test/test.py`.

## External hardware

None. The chip is entirely self-contained and driven through the standard TT GPIO pads. Any host (RP2040, microcontroller, logic analyzer with pattern generator) that can drive the 3-bit command, valid strobe, and nibble input at up to 33 MHz can exercise it.
