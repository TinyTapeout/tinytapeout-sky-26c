<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A transmit-only BPSK baseband modulator. The datapath is:

`PRBS-7 -> +/-1 BPSK mapper -> polyphase RRC pulse shaper -> 8-bit signed sample bus`

- **PRBS-7 generator** — `x^7 + x^6 + 1`, seed `7'h7F`, giving a 127-bit period that is
  short enough to verify by eye in a waveform. `prbs_reload` (`ui[3]`) reseeds it.
- **BPSK mapper** — maps each data bit to a `+/-1` symbol. `data_sel` (`ui[1]`) chooses
  between the internal PRBS and an external bit on `ext_data` (`ui[2]`).
- **RRC pulse shaper** — root-raised-cosine, rolloff 0.35, 4 symbol span, 17 taps,
  8-bit signed coefficients, at 4 samples per symbol.

  The shaper is implemented as a **polyphase** filter rather than a literal 17-tap FIR.
  Because the mapper emits impulses at 4x with zeros between them, only about 5 taps see
  a nonzero input at any output phase. The design therefore keeps a 5-deep shift register
  of symbol signs and selects one of 4 coefficient sets by phase, so each output sample is
  a 5-term add/subtract. Since BPSK symbols are `+/-1`, every tap is a sign-selected add
  and **no multipliers are needed**.

  The coefficients are scaled so that the worst case — all five signs aligned — sums to
  `<= 127`. Overflow is therefore impossible by construction and **there is no saturation
  logic**, which removes the most likely source of disagreement between the RTL and the
  reference model.

Output is 8-bit signed two's complement on `uo[7:0]`, with `sample_valid` (`uio[0]`)
pulsing one clock per sample and `symbol_tick` (`uio[1]`) one clock per symbol. The raw
PRBS bit is echoed on `uio[2]` so a host can align for BER measurement. `clk_div_sel`
(`ui[7:4]`) divides the input clock to set the symbol rate.

The chip does baseband only. Demodulation, RF upconversion, and BER counting all live
off-chip.

## How to test

Drive `clk` and release `rst_n`, then set `tx_enable` (`ui[0]`) high with `data_sel`
(`ui[1]`) low to select the internal PRBS-7 source. Shaped samples appear on `uo[7:0]`,
one per `sample_valid` (`uio[0]`) pulse, as 8-bit signed two's complement values.

Capture the sample bus on each `sample_valid` and compare against the Python
reference model, which generates the RRC taps, the PRBS-7 sequence, and the expected
shaped output. Verification is a bit-exact match against that model, run under cocotb
(`cd test && make`) at both RTL and gate level.

To drive external data instead of the PRBS, set `data_sel` (`ui[1]`) high and present the
bit stream on `ext_data` (`ui[2]`), advancing one bit per `symbol_tick` (`uio[1]`).
Pulsing `prbs_reload` (`ui[3]`) reseeds the generator to `7'h7F` so a capture can be
aligned to a known starting state.

## External hardware

None required to exercise the design — it can be clocked and read directly from the
demo board.

For the full transmit chain:

- **RP2040 demo board** — PIO burst capture of the parallel sample bus, dumped over
  USB-CDC as a `.bin` file.
- **GNU Radio** on the host — File Source -> Char To Float -> Multiply Const ->
  Float To Complex, feeding a bladeRF sink.
- **bladeRF** — RF upconversion. All demodulation (matched filter, timing recovery,
  slicer, BER counting) is done in GNU Radio on the host.
