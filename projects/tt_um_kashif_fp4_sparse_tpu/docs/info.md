<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.
-->

## How it works

A mini TPU that computes `C = A x W` with **INT8 activations** and **1:2
structurally sparse E2M1 weights** — the 4-bit floating-point element type
shared by NVFP4 (NVIDIA Blackwell) and MXFP4. It combines the two numerics
levers from Roune's AI-chip design argument in one datapath: structured
sparsity along the contraction axis *and* a 4-bit float element — with
higher-precision INT8 activations, the side that is hardest to quantize.

The math runs on **one time-multiplexed processing element**, not a
spatial array: a SPI-driven design is completely SPI-bound (the 36 operand
instructions require at least 3456 `clk` cycles at SCLK <= clk/6), so a RUN's compute latency is
practically free no matter how many outputs share one PE. The original
3x3 systolic array spent 58% of its flip-flops and most of its
combinational logic on 9-way spatial parallelism that bought nothing;
serializing to one PE — reused across all 9 outputs, ~45 cycles per RUN,
still about 1.3% of the SPI load time — cut chip area ~47% and dropped the
design from a 2x2 to a **1x2 tile**.

There is **no hardware multiplier anywhere**: every E2M1 magnitude
(0, 1, 2, 3, 4, 6, 8, 12 in the x2 integer domain) is `(1 or 3) << shift`,
so a product is one conditional add (the 3x), one shift, and one
conditional negate:

```
prod = ± (act [+ act << 1]) << shift
```

### The sparse weight format

Each 5-bit weight code `{select, e2m1[3:0]}` covers **two** consecutive
contraction steps (k = 2j and k = 2j+1): the E2M1 value sits at
`k = 2j + select`, the other position is zero — 1:2 structured sparsity,
the 1:2 analog of NVIDIA's 2:4. The select bit muxes which INT8 activation
of a pair enters the shift-add, so an 8-bit mux does the work of a second
"multiplier" and every cycle advances two contraction steps: an 8-deep dot
product in the time a dense array does 4, with weights stored at 2.5 bits
per dense position. **Two sparse RUNs cover exactly one NVFP4 16-element
block** (four cover an MXFP4 32-block), so host-side block scaling aligns
with no padding.

Results are exact 14-bit signed integers (max |C| = 6144). Block scaling
happens on the host during dequantization: scale each block's partial sum
before adding it to other blocks, `C = sum_b((D_b / 2) * partial_b)`.
This makes the chip element-level format-agnostic: apply E4M3 scales per 16-element block
(+ FP32 tensor scale) for **NVFP4** semantics, or E8M0 power-of-two scales
per 32-element block for **MXFP4**. The exact accumulators let the host
apply per-block scales (including four-over-six adaptive scaling and
per-token activation scales) to bit-exact partial sums.

### Second mode: dense E2M1 x INT8

The RUN instruction's `d` flag switches to **dense** operation: each code's
E2M1 nibble is a weight for ONE contraction step (K = 4, half throughput,
select bit ignored, only even activation elements participate) — the same
trade NVIDIA makes running dense on 2:4-sparse tensor cores. This is plain
dense FP4-weight x INT8-activation matmul. E2M1 checkpoint weights can be
streamed after the host quantizes activations to INT8 and handles all block
and tensor scales; it is not native FP4-activation execution.

SPI protocol follows the proven reference mini-TPU
([MILOUDIAS/IEEE_ttsky_mini_tpu_spi](https://github.com/MILOUDIAS/IEEE_ttsky_mini_tpu_spi)),
which this chip's original 3x3 array also ported its systolic control
from; a `(row, col, step)` sequencer replaced the skewed wavefront when
the array serialized to one PE (see REPORT.md). Both operand streams
still change every RUN step (real dot products, not a shortcut). Activation
functions are host-side: they are only correct after cross-tile
partial-sum accumulation and bias, which happen on the host anyway.

### Instruction set (16 bits, sent LSB-first over SPI)

| Instruction | Format (binary)        | Description |
|-------------|------------------------|-------------|
| `LOAD A`    | `10 0 rr eee aaaaaaaa` | INT8 activation byte `a` into row `r` (0-2), element `e` (0-7) |
| `LOAD B`    | `10 1 cc 0jj 000swwww` | Weight code {select `s`, E2M1 `w`} into column `c` (0-2), pair slot `j` (0-3) |
| `RUN`       | `01 d 0000000000000`   | Clear accumulators, run all 9 outputs on one PE (~45 cycles); `d`=0 sparse (K=8), `d`=1 dense E2M1 (K=4) |
| `STORE`     | `11 b rr cc 000000000` | Drive byte `b` (0 = acc[7:0], 1 = acc[13:8]) of C[r][c] on `uo_out` |

The system clock is 10 MHz and SCLK must be at most clk/6 (about 1.67 MHz).
MOSI, CS, and SCLK pass through synchronizers and the receiver runs entirely
in the system-clock domain; raw SCLK is not an internal clock. Keep CS high
for at least four system-clock cycles between frames. The `ready` pin
(uio[1]) stays high when a RUN completes and clears when the next RUN is
accepted, so a polling host cannot miss it. Instructions received while RUN
is busy are ignored. Alternatively, wait ~45+ clock cycles. The SPI is
receive-only: all results are read via STORE on `uo_out`, from a small
result memory that holds all 9 outputs until the next RUN overwrites them
(the same "any output, any time" contract the old per-PE accumulators
offered).

### E2M1 weight encoding (element type of NVFP4 and MXFP4)

| Code | Value | x2 integer |     | Code | Value | x2 integer |
|------|-------|------------|-----|------|-------|------------|
| 0000 | +0.0  | 0  | | 1000 | -0.0  | 0   |
| 0001 | +0.5  | 1  | | 1001 | -0.5  | -1  |
| 0010 | +1.0  | 2  | | 1010 | -1.0  | -2  |
| 0011 | +1.5  | 3  | | 1011 | -1.5  | -3  |
| 0100 | +2.0  | 4  | | 1100 | -2.0  | -4  |
| 0101 | +3.0  | 6  | | 1101 | -3.0  | -6  |
| 0110 | +4.0  | 8  | | 1110 | -4.0  | -8  |
| 0111 | +6.0  | 12 | | 1111 | -6.0  | -12 |

## How to test

Run the cocotb testbench:

```
cd test
make -B
```

The suite drives the SPI interface exactly like an external host and checks
the full `C = A x W` result against an **independent golden model** (E2M1
and sparse-code decode from first principles, then a plain matrix multiply).
It includes select-bit routing, both modes with per-RUN mode latching,
negative-zero handling, a non-degeneracy test (equal-sum activation
matrices must produce different results), exact accumulator limits,
accumulator-clear checks, every partial SPI-frame length, reset mid-frame,
maximum-rate SPI, sticky ready, and randomized full-coverage trials. An
exhaustive PE test covers all 16,384 input/mode combinations. It also checks
that partial sums from blocks
with different scales are dequantized before being combined.

## External hardware

None required. Any SPI-capable host (e.g. the demo board's RP2040) drives
MOSI/CS/SCLK and reads result bytes on `uo_out`. Operand memories do not reset
to save area, so the host must load every operand used before the first RUN.
