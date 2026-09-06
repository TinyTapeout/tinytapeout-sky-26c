<!---
This file is used to generate your project datasheet. Please fill in the information below.
-->

## How it works

This is **V0.15 of a programmable neural compute core** — deliberately the smallest architecture
that still gives a compiler/MLIR backend a real lowering target. It is a pipelined (50 MHz)
byte-stream int8 multiply-accumulate (MAC) **engine** with a small instruction set, a **single
int32 accumulator**, saturating accumulation, and a **`SPILL`** opcode that reads the raw
int32 accumulator out. The requantization tail (bias, downscale-shift, saturate, ReLU) is
*output-only* math, so it is offloaded to the **host** in software — what stays on-chip is the
interesting hardware: the pipelined MAC, the accumulator, the streaming `MACV` primitive,
the spill path, a self-test, and a debug interface.

### ISA (V0.15)

Instructions and their operands are streamed in one byte per clock over `ui_in` (gated by
`IN_VALID`). All accumulating ops target the single accumulator `ACC`:

| Opcode | Name         | Operands             | Effect                                              |
|-------:|--------------|----------------------|-----------------------------------------------------|
| `0x00` | `NOP`        | —                    | nothing                                             |
| `0x01` | `LOAD_ACT`   | 1 byte (int8)        | activation register = operand                       |
| `0x02` | `LOAD_W`     | 1 byte (int8)        | weight register = operand                           |
| `0x03` | `MAC`        | —                    | `ACC += act * weight` (saturating int32)       |
| `0x04` | `MACV`       | `N`, then `2N` bytes | `ACC += Σ actᵢ·wᵢ` (streaming dot product)      |
| `0x05` | `CLRACC`     | —                    | `ACC = 0`                                      |
| `0x06` | `SPILL`      | —                    | emit raw int32 `ACC` as 4 LE bytes over `OUT_VALID`; fold into MISR |
| `0x07` | `HALT`       | —                    | stop; assert DONE                                   |
| `0x08` | `WMACV`      | `N`                  | **wide** streaming MAC (see below): `N` host-clocked cycles of `ACC += act·w`, activation on `ui_in` ∥ weight on `uio`, 1 MAC/cycle |
| other  | —            | —                    | illegal instruction: assert ERROR, DONE             |

`MACV` is the primary compiler lowering target: a quantized `linear`/conv reduction tiles down to a
sequence of `MACV` ops. One output neuron is `MACV …; SPILL`; the host applies the bias + requant +
activation to the spilled accumulator, and tiles additional output channels by re-issuing `MACV`.
(An earlier version had a 2-entry accumulator file + `SEL_ACC`; byte-level accounting showed that
without a broadcast-MAC instruction it couldn't beat host re-streaming over the pin interface, so it
was cut — see `JOURNEY.md`.)

**Wide-input mode (`WMACV`).** Normally input is one byte/clock over `ui_in`, so a MAC (activation +
weight) takes 2 clocks. `WMACV N` runs a **wide burst**: for `N` host-clocked cycles the `uio` pins
are reconfigured as inputs and carry the **weight byte** while `ui_in` carries the **activation** — one
MAC per clock, **2× the throughput of `MACV`**. Before and after the burst, `uio` reverts to its normal
role (control in / status out / debug), so wide mode and the debug port **time-share** the same pins —
you never need both at once (debug is a bring-up activity, wide is a production run). The 2× is only
realized with a host that can actually push 16 bits/clock (e.g. an RP2040 PIO + DMA driver); a simple
byte-at-a-time driver leaves the chip feed-limited either way. `BUSY` is asserted for the burst.

**Host-side requant.** The requantized int8 never re-enters the datapath — requant is purely output
framing. Since `SPILL` exposes the raw int32 accumulator, the host does the tail in software:
`out = ReLU?( sat8( (acc + bias + 2^(shift-1)) >> shift ) )`. This keeps the barrel shifter, bias
register, and requant pipeline off the (area-constrained) chip. The MAC is pipelined (the
accumulator commits one cycle after the multiply), and `SPILL` streams its 4 bytes over `OUT_VALID`.

**Self-test signature (MISR).** Every `SPILL` output byte is folded into a 16-bit MISR (Galois LFSR,
poly x¹⁶+x¹⁵+x¹³+x⁴), readable via the debug interface. Running a known program yields a fixed
signature, so post-fabrication bring-up is a single read-and-compare against the golden value.

### Long reductions (`SPILL`)

The accumulator is int32, so one accumulation holds up to ~131K max-magnitude products before it
saturates (and sets the sticky overflow flag) — so tiling is rare in practice; `SPILL` remains as the
**backup** path for extremely large reductions. To tile: accumulate a chunk, issue **`SPILL`** to read
the raw int32 partial sum (4 little-endian bytes over four `OUT_VALID` pulses; `SPILL` reads the
accumulator out *directly* and stalls further input for those 4 cycles, asserting `BUSY`, so wait for
the 4 pulses before the next instruction),
`CLRACC`, and repeat — then sum the raw int32 partials on the
host (exact, since they are not requantized) and do the final requant. So the accumulator width is
a *chunk size*, not a ceiling: arbitrary layer sizes work via host-side reconstruction.

### Debug interface

Assert `DBG_EN` and place a register address on `ui_in[3:0]` to read internal state back on
`uo_out` (combinational, non-intrusive — reading never advances the machine). Real-time
`OUT_VALID`/`DONE`/`BUSY`/`ERROR` are also on the `uio_out` pins. The register map:

| Addr | Register        | Contents                                  |
|-----:|-----------------|-------------------------------------------|
| `0x0` | `PC`           | opcodes accepted (wraps at 256)           |
| `0x1` | `CUR_INSTR`    | current opcode byte                       |
| `0x2` | `STATE`        | FSM state (see below)                     |
| `0x4`–`0x6` | `ACC[7:0]`…`ACC[23:16]` | int32 accumulator, little-endian (byte 0 = LSB) |
| `0x7` | `ACC[31:24]`   | accumulator high byte (int32)                             |
| `0x8` | `ACT_REG`      | activation register (int8)                |
| `0x9` | `W_REG`        | weight register (int8)                     |
| `0xA` | `OUT_REG`      | latest `SPILL` byte                       |
| `0xB` | `STATUS`       | `[5:0]` = sticky status flags (`[7:6]` = 0)                |
| `0xC` | `CYC`          | cycles since execution started (wraps)    |
| `0xE` | `SIG[7:0]`     | MISR self-test signature, low byte        |
| `0xF` | `SIG[15:8]`    | MISR self-test signature, high byte       |
| other | —              | unused (`0x3`, `0xD` read `0x00`)         |

**Status byte (`0xB`):** bits `[5:0]` are sticky flags — `[0]` illegal-instruction,
`[1]` arithmetic-overflow, `[2]` pipeline-error (reserved, always 0), `[3]` output-generated,
`[4]` execution-started, `[5]` execution-finished. Bits `[7:6]` read 0.

**FSM state (`0x2`):** 0 `FETCH`, 1 `LDACT`, 2 `LDW`, 3 `MACV_N`, 4 `MACV_A`, 5 `MACV_W`,
6 `HALT`, 7 `ERR`.

### Post-fabrication bring-up (self-test)

The MISR at `0xE`/`0xF` turns bring-up into a single read-and-compare. Drive this canonical
self-test program (one byte per clock, `IN_VALID` high, from reset); each `SPILL` emits the raw
int32 accumulator over `OUT_VALID`, and every spilled byte folds into the MISR:

```
# opcode stream (hex)                 ; effect
04 03  02 03 04 05 01 01  06          ; MACV·3 [(2,3),(4,5),(1,1)] -> acc = 27, SPILL   (narrow path)
05                                    ; CLRACC -> acc = 0
08 02  (10,10) (1,1)  06              ; WMACV·2 wide -> acc = 101, SPILL                (wide path)
07                                    ; HALT
```

The `WMACV·2` step is driven wide: after `08 02`, clock 2 cycles with the activation on `ui_in` and
the weight on `uio` — `(10,10)` then `(1,1)` — so the self-test exercises **both** the narrow and the
wide datapaths in one pass. Expected golden end-state:

| Register        | Addr        | Golden value                                       |
|-----------------|-------------|----------------------------------------------------|
| `STATUS`        | `0xB`       | `0x38` (output-generated, started, finished)         |
| `SIG`           | `0xF`,`0xE` | **`0x0EA8`**                                       |

A matching `0x0EA8` exercises the decoder, the pipelined Booth MAC, the accumulator, **both** the
narrow and wide operand paths, the `SPILL` path, and the MISR in a single pass — so a defect in either
datapath changes the signature. This exact program and signature are asserted against the golden model
in `test/test.py::test_misr_selftest`, so they stay in lock-step with the RTL.

## How to test

The design ships with a layered cocotb testbench (`test/`) checked against a golden Python
reference model (`test/neural_core_model.py`): directed tests for every opcode, signed
arithmetic, saturation, streaming `MACV`, pipeline/`BUSY` behavior, illegal instructions,
edge-operand sweeps through both multiply paths, and the debug interface — plus a randomized
differential test that runs many random programs through both the RTL and the model and asserts
cycle-free architectural agreement. The radix-4 Booth multiplier (`booth_mult8`) additionally has an
**exhaustive** standalone test — all 65 536 signed input pairs vs. `a*b` (`make -f Makefile.booth`).

```
cd test
pip install -r requirements.txt
make                     # chip-level suite (36 tests)
make -f Makefile.booth   # exhaustive Booth multiplier (65 536 pairs)
```

## External hardware

None required. Drive the pins from a microcontroller or the RP2040 on the TT carrier board:
present instruction/operand bytes on `ui_in` with `IN_VALID` high, read results on `uo_out`
when `OUT_VALID` pulses, and use `DBG_EN` + `ui_in[3:0]` to inspect internal state.

## Behavior at the range limits

Pinned by directed tests:

- **Accumulator overflow saturates.** If accumulation would exceed the int32 range, `ACC`
  clamps to `INT32_MAX` / `INT32_MIN` (rather than wrapping) and the sticky `arithmetic_overflow`
  bit (`STATUS[1]`) is set. For reductions beyond the ~131K-product int32 budget, tile them with
  `SPILL` + `CLRACC` and sum the raw partials on the host. Pinned by `test_accumulator_overflow`
  and `test_spill_reconstruct_long_reduction`.
