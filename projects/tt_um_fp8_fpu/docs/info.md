<!---

This file is used by Tiny Tapeout to generate the project datasheet page.
Write the documentation for your project here.

-->

## How it works

This project tapes out an **8-bit floating-point unit (FPU)** in the **FP8 E4M3**
format: 1 sign bit, 4 exponent bits (bias 7) and 3 mantissa bits. The core,
`tiny_fp8_unit`, is a **pipelined, elastic datapath** that implements a
**14-operation** IEEE-754-style instruction set (opcodes 0–13):

- **Arithmetic:** add, subtract, multiply, divide, square-root. Divide and sqrt
  share one **iterative, variable-latency** unit (1 digit/cycle); everything else
  is single-cycle in the pipeline.
- **Comparison / selection:** min, max, compare, classify (IEEE-2019 semantics,
  NaN-aware).
- **Manipulation:** absolute value, negate, copy-sign, scale-by-power-of-two
  (scalb), round-to-integral.

Five IEEE rounding modes (nearest-even, toward-zero, up, down, nearest-odd) and
full classification + exception flags are produced with every result. The whole
datapath is exhaustively verified against a `Fraction`-exact reference model.

The core's native interface is far wider than Tiny Tapeout's pin budget (~32 in,
~28 out). To fit, the top-level wrapper `tt_um_fp8_fpu` **time-multiplexes**
everything onto a single 8-bit data bus and exposes the core as a **byte stream
with two independent `valid`/`ready` handshakes** — one for input, one for
output. Because the handshakes are independent, the host keeps feeding new
operands while draining previous results, so several operations stay in flight.

### Operation

```
input  bytes per op :  A -> B -> CTRL       (B and/or CTRL may be skipped, see sticky)
output bytes per op :  RESULT [ -> FLAGS -> EXCEPTIONS ]   (last two only if READ_FULL)
```

- `CTRL` byte = `{ rm = ui_in[7:5], opcode = ui_in[4:0] }`.
- FP8 E4M3 encoding: bit 7 = sign, bits 6:3 = exponent (bias 7), bits 2:0 =
  mantissa. E.g. `1.0 = 0x38`, `2.0 = 0x40`.

A transfer happens on the rising `clk` edge where **both** `valid` and `ready`
are high; results come out **in the same order** the operations went in. Two
"sticky" bits let the host skip unchanged fields — `STICKY_B` reuses the last `B`,
`STICKY_CTRL` reuses the last `{rm, opcode}` — and `READ_FULL` selects 1 byte/op
(result only) or 3 bytes/op (result + flags + exceptions). The `uio` pins carry
the handshake: `IN_VALID`/`IN_READY` (input), `OUT_VALID`/`OUT_READY` (output),
the three config bits, and `FPU_BUSY`. `uio_oe = 8'b1000_0110`.

## How to test

After reset the bus is idle. To compute `A op B` in the simplest "full" mode
(`STICKY_*` low, `READ_FULL = 1`):

1. Drive `A` on `ui_in`, assert `IN_VALID`, and wait for the cycle where
   `IN_READY` is also high — that byte is now accepted.
2. Repeat for `B`, then the `CTRL` byte `{rm, opcode}`. The `CTRL` byte issues
   the operation.
3. Assert `OUT_READY` and read `uo_out` on each cycle where `OUT_VALID` is high:
   first the **result**, then **flags**, then **exceptions**.

Example — `1.0 + 1.0`: send `0x38` (A), `0x38` (B), `0x00` (CTRL: rm=0, op=ADD);
read `0x40` (= 2.0). The cocotb suite in `test/` drives the pins exactly like a
silicon host and self-checks every result/flag/exception against the golden
reference, including a back-pressure stress test and a sticky-mode test.

## External hardware

None required. Any host that can drive the 8 data inputs and the handshake pins
and read the 8 data outputs — a microcontroller (the demo board's RP2040, an
ESP32/STM32, …), an FPGA, or a logic analyser with a pattern generator — can
operate the FPU. Because the host also supplies `clk`, it controls the timing and
can single-step the interface.
