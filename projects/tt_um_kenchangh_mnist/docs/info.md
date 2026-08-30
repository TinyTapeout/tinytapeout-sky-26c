<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a fully self-contained MNIST handwritten-digit classifier.
All neural-network weights live **on-chip**: they are ternary ({-1, 0, +1})
and are baked into the netlist as Verilog constants, so synthesis
constant-folds them into plain logic — no RAM, no ROM macros, no weight
loading.

The network is an MLP `64 -> 32 -> 10` with binary {0,1} hidden activations
(a linear `64 -> 10` and an MLP `64 -> 16 -> 10` are selectable at synthesis
time via the `MLP` / `HIDDEN` parameters). It was trained with
quantization-aware training (straight-through estimators for the ternary
weights and binary activations) on MNIST images that were average-pooled from
28×28 to 8×8 and binarized at a fixed threshold (0.15 of full scale).
Test-set accuracy of the exact integer model (10,000 images):

| Variant | Accuracy |
|---------|----------|
| MLP 64→32→10 (default, this submission) | 80.3 % |
| linear 64→10 | 78.3 % |
| MLP 64→16→10 | 76.0 % |

The default variant hardens to ~31 % utilization of a 2×2 tile
(sky130A).

Operation is bit-serial and takes about 24 µs per digit at 10 MHz:

1. **Load** — the host strobes START, then shifts 64 pixel bits in through
   `ui[0]`/`ui[1]` (pixel 0 = top-left, row-major, LSB first). The bits land
   in a 64-bit shift register.
2. **Layer 1** — 64 cycles: the input register rotates; each pixel bit
   add/sub/skips into 16 parallel 8-bit accumulators (the 32-hidden-unit
   default runs two 16-lane passes). Biases are preloaded so the hidden
   activation is simply the accumulator sign bit.
3. **Layer 2** — hidden bits are binarized, then fed serially (one per
   cycle) into 10 class accumulators.
4. **Argmax** — a 10-cycle sequential scan finds the best class (ties go to
   the lower digit). DONE rises; the digit appears on `uio[3:0]` and on the
   7-segment display, with the decimal point lit.

Compute starts automatically after the 64th bit; DONE rises 172 clock cycles
later (74 for the linear variant, 91 for the 16-hidden MLP). A new START
strobe — or a hardware reset — cleanly abandons any load or result in
progress.

## How to test

Serial protocol on `ui_in` (all signals sampled on the rising edge of `clk`;
`clk` may run continuously, up to 10 MHz):

* `ui[0]` **DATA** — pixel bit
* `ui[1]` **SHIFT_EN** — when high, DATA is shifted in on this clock edge
* `ui[2]` **START** — one-cycle strobe: clear the bit counter, begin a new image

```
            ┌─┐ ┌─┐ ┌─┐ ┌─┐ ┌─┐ ┌─┐   ┌─┐ ┌─┐ ┌─┐ ┌─┐
clk       ──┘ └─┘ └─┘ └─┘ └─┘ └─┘ └───┘ └─┘ └─┘ └─┘ └──
            ┌───┐
START     ──┘   └───────────────────────────────────────
                    ┌───────────┐     ┌───┐        (64 bits total)
SHIFT_EN  ──────────┘           └─────┘   └─────────────
                    ╔═══╗╔══════╗     ╔═══╗
DATA      ──────────╣p0 ╠╣ p1   ╠─────╣p2 ╠─────────────
                    ╚═══╝╚══════╝     ╚═══╝
                     bit0  bit1        bit2  ... gaps are fine:
                                             DATA only sampled when SHIFT_EN=1
```

After the 64th bit the chip computes on its own; poll DONE (`uio[4]` or
`uo[7]`). DONE stays high, and the digit stays valid, until the next START.

```
              ... last bit          compute (~172 cycles)
SHIFT_EN  ────────┐┌──┐
                  └┘  └─────────────────────────────────
DONE      ──────────────────────────────┌───────────────
                                        └→ read uio[3:0]
```

Outputs:

* `uio[3:0]` — predicted digit, binary 0–9 (uio pins are always outputs)
* `uio[4]` — DONE, `uio[5]` — BUSY (high while computing)
* `uo[6:0]` — 7-segment a–g (matches the TT demo board display), `uo[7]` —
  DONE / decimal point. The display is blank after reset until the first
  result.

Image preprocessing (host side): average-pool the 28×28 grayscale image to
8×8 (bin r spans rows ⌊r·28/8⌋ to ⌈(r+1)·28/8⌉−1, same for columns), then
set each pixel to 1 if its mean is greater than 0.15 (pixel range 0–1). Send
row-major, top-left pixel first. See `demo/rp2040_demo.py` in the project
repo for a ready-made MicroPython demo, and `test/test.py` for the cocotb
testbench that verified 200 MNIST images bit-exact against the training
pipeline.

To reproduce training / regenerate weights: `train/train.py` (PyTorch QAT)
then `train/gen_weights.py` (emits `src/weights.v`).

## External hardware

None required — the on-board 7-segment display shows the digit. Drive the
inputs from the TT demo board's RP2040 (see `demo/rp2040_demo.py`) or any
microcontroller.
