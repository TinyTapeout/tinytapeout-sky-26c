## How it works

This project is a small feedforward artificial neural network (ANN) accelerator
with topology **4 -> 5 -> 1** (4 inputs, 5 hidden neurons, 1 output neuron),
implemented as a fixed-point digital ASIC and controlled over an SPI-like
interface.

**Numeric format.** Activations use Q6.10 fixed-point (16-bit, 10 fractional
bits). Weights and biases use Q4.4 fixed-point (8-bit, 4 fractional bits).
The output neuron produces a raw sigmoid value in Q6.10 (e.g. `0x0200` =
0.5); thresholding is left to the host.

**Datapath.** A single shared multiply-accumulate processing element (`pe`)
and a single shared activation-function unit (`af`, a ROM-based sigmoid
approximation) are time-multiplexed across all 6 neurons by a small FSM
inside the `ann` module. This keeps the design small at the cost of taking
several clock cycles per inference (roughly a few dozen cycles for the full
4-5-1 network, dominated by the number of MAC steps per neuron).

**SPI interface.** Two internal AXI4-Stream-like modules (`spi_to_axis_deserializer`
and `axis_to_spi_serializer`) bridge a 3-wire SPI-style protocol (`cs_n`,
`sclk`, `mosi` on the input side, a single `miso` output) to the ANN core. A
write transaction shifts in one or more 24-bit frames (1 tlast bit + 7
reserved bits + 16 data bits) while `cs_n` is held low; a read transaction
shifts out one 16-bit result MSB-first once the ANN core has finished
computing.

**Weight/bias persistence (separating "load weights" from "run inference").**
The first word of every write transaction is a header word:
- bits `[2:0]`: `num_inputs` (1-4)
- bit `[3]`: `load_weights` -- **1** means this transaction also carries the
  full 16-word block of 31 packed weight/bias values (2 values per word,
  8-bit each) right after the 4 activation words, exactly like a normal
  "configure" transaction. **0** means this transaction carries *only* the 4
  activation words; the wrapper reuses whatever weights/biases were loaded
  by the most recent `load_weights=1` transaction. This means day-to-day
  inference only requires sending 5 words (header + 4 activations) instead
  of 21, and weights don't need to be resent unless you actually want to
  change them.

**Bring-up / self-test modes.** Two bits on `ui_in[4:3]` select one of four
modes, independent of the SPI protocol above:
- `00` NORMAL -- the SPI/ANN behaviour described above. `uo_out[7:1]`
  additionally mirrors the 7 MSBs of the last computed result continuously
  (no protocol needed), so a scope/logic analyzer can sanity-check that a
  computation happened without decoding SPI.
- `01` HEARTBEAT -- a free-running counter toggles `uo_out[1]`, proving
  `clk`/`rst_n`/basic logic are alive without touching the SPI/ANN datapath
  at all.
- `10` LOOPBACK -- `uo_out[7:1]` directly echoes `ui_in[7:1]`, proving the
  physical I/O pins are wired correctly, independent of any internal logic.
- `11` SELFTEST -- runs one computation through the *real* `ann` datapath
  with a fixed all-zero golden vector (weights=0, activations=0), which
  deterministically produces `0x0200` (`af(0)`, i.e. sigmoid(0) = 0.5).
  `uo_out[1]` pulses `self_test_done` and `uo_out[2]` reports
  `self_test_pass`. This lets a bring-up engineer verify the chip is
  functionally alive post-fabrication without needing to supply any real
  weights, biases, or inputs. Note: this specific vector only exercises the
  FSM sequencing, ROM addressing, and done/handshake logic -- it does not
  exercise non-zero multiply/shift/saturation arithmetic, which is instead
  covered by the numeric regression vectors in the testbench.

`uio_out[5]` (`weights_loaded`) is a persistent status flag, visible in any
mode, that is set the first time a `load_weights=1` transaction completes
and is only cleared by reset -- so a host can check whether valid weights
have ever been loaded before trusting a NORMAL-mode inference result.

## How to test

A minimal bring-up sequence, usable without any host software or real
weights:

1. Hold `rst_n` low, then release it, with `ena=1`.
2. Set `ui_in[4:3] = 01` (HEARTBEAT). `uo_out[1]` should toggle slowly over
   time -- this alone proves the clock and reset are working.
3. Set `ui_in[4:3] = 10` (LOOPBACK) and drive various patterns on
   `ui_in[7:5]`. `uo_out[7:1]` should echo `ui_in[7:1]` exactly.
4. Set `ui_in[4:3] = 11` (SELFTEST) and wait a short time. `uo_out[1]`
   (`self_test_done`) should go high, and `uo_out[2]` (`self_test_pass`)
   should read 1.
5. Set `ui_in[4:3] = 00` (NORMAL) to run a real SPI transaction:
   - Pull `cs_n` (`ui_in[0]`) low.
   - Shift in a 24-bit header frame MSB-first on `mosi` (`ui_in[2]`),
     clocked by `sclk` (`ui_in[1]`): bit23 = tlast (0 for the header),
     bits[22:16] = 0, bits[3] = `load_weights` (1 to also send weights),
     bits[2:0] = `num_inputs`.
   - Shift in 4 activation words (Q6.10), then, if `load_weights=1`, 16
     more words packing the 31 Q4.4 weight/bias values 2-per-word (see
     `ann_axis_wrapper.v` for the exact index order). Raise `tlast` (bit23)
     on the final word of the transaction.
   - Raise `cs_n` high to close the write phase.
   - Poll `miso` while `cs_n` is high: it reflects the wrapper's "ready for
     next write" status, which only goes high again once the computation
     has finished and the result has been handed to the serializer.
   - Once ready, pull `cs_n` low again and clock out 16 bits on `miso`
     (MSB-first) to read the Q6.10 result.
   - To run another inference re-using the same weights, repeat the write
     phase with a header whose `load_weights` bit is 0 and only 4
     activation words.

A full, self-checking testbench (`test/tb_undip_ann_tt`-style for local
Vivado/Icarus simulation, plus `test/test.py` for the cocotb-based CI gate
level test) exercises all four modes above plus a numeric regression: a
hand-derived, simulator-verified vector (`in0=1.0`, `w_h0=1.0`,
`pe1000=1.0`, all else 0) that must produce exactly `0x029E`, followed by
two weight-reuse transactions that prove stored weights are actually being
reused (not just replaying a stale output).

## External hardware

None required for basic bring-up (all four modes are testable directly via
the demo board's DIP switches / RP2040). For real inference, any SPI-capable
host (e.g. a microcontroller) can drive `cs_n`/`sclk`/`mosi` and read
`miso`.
