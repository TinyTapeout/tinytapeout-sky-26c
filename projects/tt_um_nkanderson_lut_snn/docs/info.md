## How it works

A **look-up-table (LUT) spiking network** that classifies the orientation of a line in a 3x3 binary
grid: class 0 = vertical, class 1 = horizontal. The weights are held in a register the client
can rewrite at runtime, so this 1x2 tile design can run any retrained network of this shape rather than
only the one compiled into it.

"Spiking" here means latency ordering, following Izhikevich's *Spiking Manifesto*
(arXiv:2512.11843). There is no membrane potential, no threshold, no leak, and no time
stepping — a neuron's state is simply *when* it fires, and only the relative order of firing
times is ever consulted. Inference is compare, look up, add, compare.

Each of 4 tables watches 2 fixed pairs of input neurons. Each pair contributes one bit,
`x[a] > x[b]`, and the two bits index one of the table's 4 rows. The layer output is the
element-wise sum of the 4 selected rows, and the earliest output spike wins:

```
bit r of table i = (x[a[i][r]] > x[b[i][r]])
y[k]             = sum over i of tables[i][j_i][k]
class            = argmin over k of y[k]
```

There is no multiplier anywhere and no activation function. All the nonlinearity is in
*which* rows get selected. Because a lit cell must fire before a dark one and nothing but the
ordering matters, the firing times can be just -1 and +1, which collapses each comparison to
"cell a dark AND cell b lit" — one gate per index bit, with no subtractor or comparator on the
input side.

Stored weights are plain signed 8-bit integers. 8 bits is the
smallest width at which rounding provably cannot flip a decision for the default weights
(worst-case shift 0.042 against a smallest decision margin of 0.077).

Total state: **320 bits of weights** (16 four-bit anchor indices + 32 signed bytes) plus 12
flops of pipeline. Latency is a fixed **2 cycles**, with no handshake; back-to-back inputs
stream without gaps.

### Grid bit order

Cell `i` is `grid[8-i]`, so bit 8 is the **top-left** cell and bit 0 the bottom-right, read
row-major:

```
grid[8] grid[7] grid[6]
grid[5] grid[4] grid[3]
grid[2] grid[1] grid[0]
```

`grid[7:0]` arrives on `ui[7:0]` and `grid[8]` on `uio[0]`.

### Configuration

Weights live in a 320-bit shift chain. Hold `CFG_WE` high and present one byte per clock on
`ui[7:0]` for **40 clocks**, keeping `IN_VALID` low for the whole load. The byte displaced off
the top of the chain appears on `uo[7:0]` in the same cycle, so a single pass both loads the new
weights and reads back the old ones. Writing those captured bytes back restores the previous
contents.

`IN_VALID` matters because the input path is not gated on `CFG_WE`: the network keeps sampling
it during a load, so asserting it mid-shift classifies a grid against half-written weights. The
answer is wrong and you cannot see it anyway, since `uo[7:0]` is carrying config bytes at the
time. Holding `IN_VALID` low avoids it entirely.

Byte order:

| bytes | contents |
| --- | --- |
| 0–3 | `lut_anchor_a.mem` lines 0–7: two 4-bit cell indices per byte, earlier line in the high nibble |
| 4–7 | `lut_anchor_b.mem` lines 0–7, same packing |
| 8–39 | `lut_tables.mem` lines 0–31: one signed byte each, entry `(i*4 + j)*2 + k` for table `i`, row `j`, output `k` |

New weights take effect on the next grid presented; nothing needs flushing.

**Reset preloads a trained network**, so the tile classifies correctly straight out of reset
and configuration is entirely optional. The default is a reference 4x2 network:

```
anchor_a  4 6 0 8 4 3 4 0
anchor_b  1 2 2 2 8 6 3 7
tables    f9 03 ff 02 e1 0f 42 af 1b f0 94 75 71 9f 22 e4
          da 17 de 17 ed 10 7f 8e 19 e4 9f 5a f0 13 70 8c
```

as a 40-byte stream:

```
4608434012228637 f903ff02e10f42af1bf09475719f22e4da17de17ed107f8e19e49f5af013708c
```

## How to test

**Out of the box, no configuration.** Present a grid on `ui[7:0]` + `uio[0]`, pulse `IN_VALID`
(`uio[1]`) for one clock, and read `CLASS` on `uo[0]` two clocks later, qualified by
`OUT_VALID` on `uo[1]`. The six noise-free patterns:

| grid | bits | expected |
| --- | --- | --- |
| `111000000` | `0x1C0` | horizontal (1) |
| `000111000` | `0x038` | horizontal (1) |
| `000000111` | `0x007` | horizontal (1) |
| `100100100` | `0x124` | vertical (0) |
| `010010010` | `0x092` | vertical (0) |
| `001001001` | `0x049` | vertical (0) |

**Reconfiguration.** Shift in 40 bytes with `CFG_WE` high, capturing `uo[7:0]` each cycle. The
captured bytes must equal the previous weights — for a freshly reset chip, the stream above.
Exchanging the two output columns of every table row (swapping bytes within each pair from
byte 8 onwards) inverts every decision, which is an easy end-to-end check that the config path
works.

**Simulation.** `cd test && make` runs the cocotb suite under Icarus. It enumerates rather
than samples: the input space is only 2^9 = 512 grids, so the equivalence tests drive *every*
one and compare against the checked-in golden vectors. That makes them a proof of
equivalence rather than a statistical argument. The suite covers the power-on default, a
reload of the same weights, and a genuinely different weight set.

**Accuracy.** 100% on the six clean patterns. Under independent per-cell flip noise at
`p = 0.1`, the exact expectation (all 512 grids weighted by probability, not sampled) is
**80.99%**. This is deliberately the small configuration; a 128-entry network of the same kind
reaches ~91% and a 38-parameter MLP reaches 93.4%, which is the Bayes ceiling for this noise
level.

**A caveat on retraining.** The anchor pairs are drawn at random at construction and frozen, so
the 8-bit width is safe by construction for *these* weights, not universally — across 20
independently initialized networks the width needed ranges from 7 to 13 bits.

## External hardware

None. Any microcontroller or FPGA that can drive 9 input bits and read 2 output bits is enough;
loading weights needs one more output byte and one strobe.
