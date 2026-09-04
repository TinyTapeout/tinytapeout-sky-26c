<!---
Tiny Tapeout datasheet source. The project checker reads this file and rejects the
template placeholder text, so keep real content under both "How it works" and
"How to test".

The design is frozen: 2 layers, width 40, 45 ns clock. If that ever changes, this file
and info.yaml (clock_hz) change together.
-->

## How it works

This chip writes text in the style of Shakespeare. It is a character-level language model,
which means it reads one character at a time and guesses the next one. **The whole model is
baked into the silicon.** There are no weight registers, no weight loading and no settings.

In this chip every weight is one of three values: -1, 0 or +1. Ternary
weights are useful for two reasons. First, the hardware never has to multiply: it adds the
input, subtracts the input, or skips it. Second, five weights fit in one byte, because
3 x 3 x 3 x 3 x 3 = 243 and a byte holds 256 values. That is 1.6 bits per weight. The chip
holds 22,400 weights in 4,480 bytes of read-only memory (ROM) on the tile.

The chip is the body of a small transformer. This one repeats a group of three steps twice:

1. **RMSNorm.** This scales the numbers so they stay in a sensible range. Its scale factors
   are baked in too.
2. **A minGRU mixer.** This is the part that remembers. It mixes the new character into a
   small memory of everything before it. A gate decides how much of the old memory to keep.
   Most language models instead keep a list of every character so far, and that list grows.
   This memory does not grow. It is 80 bytes, and it stays on the chip.
3. **RMSNorm again, then an MLP.** An MLP does two rounds of multiply-and-add. Between
   the rounds it applies one simple rule, called squared ReLU: negative values become zero,
   and the rest are squared.

Each group adds its result back into a running vector of 40 numbers. That vector is called
the residual. A last RMSNorm produces the output.

The ROM sends out one byte at a time, and one byte holds five weights. So the arithmetic
unit is **5 lanes** wide. It uses all five weights of a byte at once. A ROM read takes two
clocks. The sequencer, which is the control unit that steps through the model, starts the
next read while the lanes work on the last one. No clock is wasted.

The chip does not do the whole job alone. The host — the microcontroller on the demo board
— keeps the character and position tables, and it does the last step that turns numbers
back into a character. The split looks like this:

```
char --> wte + wpe --> int16 residual --> [ CHIP ] --> int8 residual --> logits --> sample
         (host)           80 bytes                      40 bytes         (host)
```

In the diagram, `wte` and `wpe` are the tables that turn a character and its place in the
text into numbers. The `logits` are the scores for every character that could come next.
`int16` means a whole number stored in 16 bits, and `int8` means one stored in 8 bits.

The host sends 80 bytes, the chip sends 40 bytes back, and the host picks the next
character from them. The character table is the one part that grows with the size of the
alphabet. ROM on a tile is expensive, so that table stays on the host. Most of the work
still happens on the chip.

### Configuration

Here is every number that describes the model.

| quantity | value |
|---|---|
| residual width `E` | **40** |
| transformer blocks `L` | **2** |
| MLP hidden width | **2E = 80** |
| arithmetic lanes | **5** |
| ternary weights | **22,400** |
| weight ROM | **4,480 bytes**: 4,096 bytes in the ROM block, plus 384 bytes built from ordinary logic |
| other baked constants | 280 int8 values (RMSNorm scales and gate biases), a 256-entry sigmoid table, a 48x16 rsqrt table |
| quality | **2.824 bits per character** |
| input bytes per token (`2E`) | **80** |
| output bytes per token (`E`) | **40** |
| compute clocks per token | **5,458** |
| I/O clocks per token (`3E`) | **120** |
| total clocks per token | **5,578** |
| clock | **45 ns, 22.222 MHz** |
| speed | **3,984 tokens per second**, 251.0 µs per token |

"Bits per character" says how good the guesses are, and lower is better. The figure is
measured on Shakespeare text the model never saw while it was trained, with the same
integer arithmetic the chip uses, and with the memory carried the whole way as it is on the
chip.

The speed figure is the chip alone: 5,578 clocks at 45 ns each. It leaves out the work the
host does and any delay in the wires.

### Interface

There is **one clock domain**. Everything happens on the rising edge of `clk`, and no
signal crosses between clocks anywhere in the design. `rst_n` is **synchronous**, so the
clock must run for a reset to take effect. Hold `rst_n` low for at least 4 clocks with the
clock running. `ena` must stay high for a whole token: switch it off between tokens, or
leave it on.

Bytes move with a valid/ready handshake on `uio`. The sender raises `valid` when it has a
byte, the receiver raises `ready` when it can take one, and the byte moves on the clock
edge where both are high.

| pin | direction | function |
|---|---|---|
| `ui_in[7:0]` | in | one byte of the input vector |
| `uo_out[7:0]` | out | one byte of the output vector |
| `uio[0]` | in | `in_valid` |
| `uio[1]` | out | `in_ready` |
| `uio[2]` | out | `out_valid` |
| `uio[3]` | in | `out_ready` |
| `uio[4]` | in | `sot`, start of sequence |
| `uio[5]` | out | `dbg_busy` |
| `uio[6]` | out | `dbg_rx` |
| `uio[7]` | out | `dbg_tx` |

`uio_oe` is the constant `8'b1110_0110`. The three `dbg_*` pins show which phase the chip
is in. Exactly one of them is high at any time.

Because the chip waits for the host and the host waits for the chip, **a slow host is
safe**. Nothing in the protocol times out.

### One token

One token is one character. It takes three phases, and they do not overlap. They cannot
overlap, because the chip must finish one character before it knows the next one.

1. **Input**: 40 values x 2 bytes = **80 bytes**. Send value 0 first, and send the high
   byte of each value first. Each pair of bytes is a signed 16-bit whole number that stands
   for a fraction. Divide it by 32 to get the real value. The chip stores only 14 bits of
   each value. So the host must clamp every value to the range -255.97 to +255.97 before it
   sends it. The chip cuts the extra bits off; it does not clamp for you.
2. **Compute**: **5,458 clocks**. `dbg_busy` is high the whole time. Wait for `out_valid`
   instead of counting clocks.
3. **Output**: **40 bytes**, value 0 first. Each byte is a signed 8-bit whole number
   with 2 fractional bits, so divide it by 4. Values run from -127 to +127. The chip never
   sends -128.

`sot` means "start of text". The chip reads it with the first byte of a token. It clears
the mixer memory, and nothing else clears it. Set `sot` for the first character of a piece
of text, and clear it for every character after that.

### Weight ROM

The 4,480 weight bytes do not fit in one ROM block, so bytes 0 to 4,095 sit in the ROM
macro and bytes 4,096 to 4,479 sit in a small tail built from ordinary logic. A macro is a
piece of layout that is drawn in advance and dropped into the chip as one part. Both parts
return a byte after the same number of clocks. Any address above the last real byte reads
the byte `0x79`, which decodes to five zero weights.

The ROM macro is a derived work of an Apache-2.0 layout by **Sylvain Munaut ("tnt",
`246tnt`)**, released in `smunaut/ttsky25a-tv-b-gone-eu`. Only the programmed bit pattern
was replaced. The row decoder, the bitline circuit, the output drivers and the pin
positions are reused as they are. See `macro/NOTICE.md` for the full attribution.

### Silicon

| quantity | value |
|---|---|
| tile | 4x4, 682.64 x 511.36 µm |
| process | SkyWater 130 nm (`sky130A`) |
| clock period | 45 ns |
| estimated power | about 1.1 mW. This comes from the design software, not from a real chip |

### What is measured, and what is not

The chip has not been tested on silicon, because it has not been manufactured yet.

## How to test

The chip needs a host that drives the byte protocol on its pins. The reference host is the
**RP2350B** microcontroller on the Tiny Tapeout demo board.

**With the reference firmware.** The firmware does the parts of the model that are not on
the chip: it turns a character into the 80 input bytes, and it turns the 40 output bytes
back into a character. A small dedicated unit inside the microcontroller makes the chip's
clock, so the clock and the data can never drift apart.

1. Build the firmware and copy the `.uf2` file it produces onto the board. The build must
   name the same trained model that the ROM holds. It sets the model size, the number
   format and the set of characters. If it does not match the silicon, the link **hangs
   instead of reporting an error**.
2. Select this project on the demo board. The firmware clocks the chip at **21.43 MHz**,
   not 22.222 MHz. The RP2350 can only divide its own 150 MHz clock by whole numbers, and
   7 is the smallest divider that keeps every chip clock at or above 45 ns. Any slower
   clock also works, because nothing in the protocol times out.
3. Connect to the board over USB. It gives you a text prompt. Type `info` to see which
   model is on the chip and how fast it is clocked. Type `gen 400 KING RICHARD III:` to
   make 400 characters of Shakespeare-like text.
4. Type `clksweep` to find the fastest clock the chip is happy with. The command tries one
   divider after another and reports where the link starts to fail.

**A test with no firmware at all.** Hold `in_valid` and `out_ready` high, clock the chip,
and watch `uio[7:5]`. The high bit must walk from `dbg_rx` to `dbg_busy` to `dbg_tx` and
back. That shows the sequencer is running, and it needs only a logic analyser.

If the link stops, read `uio[7:5]` first. Stuck with `dbg_rx` high means the host sent too
few bytes. Stuck with `dbg_tx` high means the host read too few. A reset clears it.

## External hardware

**None.** The project needs only the Tiny Tapeout demo board. The RP2350B on the board is
the host, and it drives the link through the standard input, output and bidirectional Pmod
headers.

A logic analyser on `uio` is useful during bring-up, but it is not required.
