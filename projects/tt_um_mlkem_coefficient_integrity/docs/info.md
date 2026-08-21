<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
## Credits  
We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD–ECE), Dr. K R Usha Rani (Associate Dean–PG), Dr. K. S. Geetha (Vice Principal), and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

## How it works

This project implements a streaming ML-KEM (Kyber) coefficient field-operation engine. It supports all three
standard parameter sets -- ML-KEM-512, ML-KEM-768 and ML-KEM-1024 -- selected at `start` time via the `param`
bits on `uio_in`.

The design has two operating phases, selected by the `phase` bit on `uio_in` at `start`:

- **phase = 0 (decompression / output):** the host streams ciphertext bytes in. The engine unpacks each
  bit-packed coefficient (`du`-bit width for the first `c1_len` coefficients, `dv`-bit width for the remainder),
  decompresses it via a bit-serial repeated-doubling accumulator, and streams the decompressed 12-bit value back
  out as two bytes per coefficient.
- **phase = 1 (auxiliary-reference verification):** the host streams ciphertext bytes in as before, but for
  every unpacked coefficient the engine also requests a 12-bit auxiliary reference value from the host
  (`S_RXA`), recompresses it via the same bit-serial engine, and compares the result against the coefficient
  taken directly from the ciphertext stream. A running (sticky) mismatch flag accumulates across all
  coefficients.

When the expected coefficient count for the selected parameter set has been consumed, the design enters
`S_DONE` and reports a 2-bit status on `uo_out[1:0]`:

- `uo_out[0]` (`MATCH`) -- set if phase 1 ran and no mismatch was ever detected.
- `uo_out[1]` (`FAULT`) -- set if the number of coefficients processed did not match the expected total for
  the selected parameter set (a framing/length error), also mirrored on `uio_out[7]`.

`uio_out[6]` (`busy`) is high whenever the design is actively unpacking, decompressing, comparing, or has
output pending.

### Byte protocol (`uio_in`)

| Bit | Name    | Meaning                                                          |
| --- | ------- | ----------------------------------------------------------------- |
| 0   | `wr`    | Strobe: latch `ui_in` as the next input byte                      |
| 1   | `start` | Strobe: begin a new transaction (also latches `phase` and `param`)|
| 2   | `rd`    | Strobe: advance to the next pending output byte                   |
| 3   | `phase` | 0 = decompress/output, 1 = auxiliary-reference verify             |
| 5:4 | `param` | 0 = ML-KEM-512, 1 = ML-KEM-768, 2 = ML-KEM-1024                   |

All strobes are rising-edge, single-cycle pulses (assert for one clock, then deassert).

## How to test

1. Assert `start` (with `phase`/`param` set as desired) for one clock cycle.
2. Feed ciphertext bytes one at a time: wait until `busy` (`uio_out[6]`) allows a write, present the byte on
   `ui_in`, and pulse `wr`.
3. **Phase 1 only:** whenever the design requests it, supply the 12-bit auxiliary reference coefficient for
   the coefficient currently being processed, two bytes low-then-high-nibble, each written with a `wr` pulse.
4. **Phase 0 only:** whenever output is pending, pulse `rd` to read each of the two output bytes per
   coefficient (low byte first, then the high nibble).
5. After the last ciphertext byte, wait for `busy` to deassert with the design in `S_DONE`; read the
   `MATCH`/`FAULT` result from `uo_out[1:0]`.

The `test/test.py` cocotb suite exercises all three parameter sets, boundary-position tamper injection
(phase 1), and full decompression-output verification against a Python golden model (phase 0). Run with:

```sh
cd test
make -B
```

## External hardware

None. This project is a pure digital logic block; it communicates only over the standard Tiny Tapeout
`ui_in`/`uo_out`/`uio_*` pins and needs no external hardware to operate.

