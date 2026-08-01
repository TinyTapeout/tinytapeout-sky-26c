<!---
This file is used to generate your project datasheet.
-->

## How it works

Each clock cycle, a new 8-bit sample arrives on the input pins — think of each number as today's reading of some economic gauge. The chip maintains a smoothed running average of the stream (an exponential moving average: old information fades, new information dominates) in a 16-bit accumulator:

```
acc  <=  acc + sample - (acc >> k)
```

where `k` (1-7, set on `uio[2:0]`) controls how fast old data fades. A right-shift by `k` is a divide by 2^k that costs almost no silicon, so the whole design uses **no multipliers, no division, and no memory**.

The average is compared against a **programmable threshold with a hysteresis band**, and the chip answers exactly one question on one wire, `uo[7]`: are we in the regime, or not? The regime bit turns on only when the average clears `threshold + hysteresis`, and off only when it falls below `threshold - hysteresis`, so the output never flickers when the data hovers near the line. The remaining outputs (`uo[6:0]`) expose the running average's top seven bits for observability.

Threshold and hysteresis are loaded from the input bus using two strobe pins: hold `uio[7]` high for one clock with the threshold value on `ui[7:0]`, or `uio[6]` high with the hysteresis value.

A third rule adds **persistence**: the regime bit flips only after the average has qualified for `N` consecutive samples (`N` loaded via the `uio[5]` strobe; default 1 = flip immediately). One noisy print never changes the call — the same "sustained N periods" confirmation discipline used in regime frameworks, implemented as an 8-bit counter that resets whenever the streak breaks.

It is a macroeconomic regime call — the author's day job — reduced to its smallest honest expression and cast in physical silicon.

## How to test

1. Reset with `rst_n` low for a few cycles (defaults: threshold 128, hysteresis 8).
2. Set `uio[2:0]` to a smoothing constant, e.g. 3.
3. Configure: pulse `uio[7]` high for one clock with e.g. 100 on `ui[7:0]` (threshold), then `uio[6]` high with e.g. 10 (hysteresis). Optionally pulse `uio[5]` with e.g. 8 to require eight consecutive qualifying samples before any flip.
4. Feed samples on `ui[7:0]`, one per clock. Feed values near 200 for a few hundred cycles: `uo[7]` goes high once the average climbs past threshold + hysteresis. Feed values near 5: `uo[7]` drops once the average falls below threshold − hysteresis.
5. Watch `uo[6:0]`: the running average's top seven bits, at all times.

Nothing depends on clock speed — the design is correct at any frequency, per shared-die guidance. The cocotb testbench in `test/` checks the RTL cycle-for-cycle against a bit-exact Python reference model (`reference_model.py`), including reset, convergence, both threshold directions, hysteresis no-flicker, saturation at both rails, and all eight smoothing constants.

## External hardware

None. Any way to drive 8 input pins and observe 8 outputs (the Tiny Tapeout demo board is sufficient).
