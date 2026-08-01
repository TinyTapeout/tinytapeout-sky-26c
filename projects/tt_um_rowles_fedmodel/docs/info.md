<!---
This file is used to generate your project datasheet.
-->

## How it works

This chip is a risk-management model the author built in the mid-2000s and ran through two decades of institutional practice, cast in silicon. The rule is deliberately simple: **count the Federal Reserve's rate cuts.** Easing cycles that go deep usually mean something is breaking. When the cut count reaches a threshold, step out of the market, stay out for twelve months, then resume. Stay invested through tightening cycles, which have historically been rising-market regimes.

The chip advances on discrete **events**, not wall time — one event per clock edge: a `CUT` strobe when the Fed cuts, a `HIKE` strobe when it raises, and a `MONTH` strobe that drives the internal clocks. The easing cycle resets on any hike or after twelve months of Fed inaction. The exit window is cuts `N` through `N+2` of a live cycle, and each qualifying cut restarts the twelve-month stay-out clock.

It carries **three generations of the same model**, selectable at runtime:

- **F1, the 2006 original** (`F2_MODE` low): reaching the window exits, unconditionally. Threshold defaults to 4.
- **The optimized variant**: load `N = 6` through the `LOAD_N` strobe.
- **F2, the validated revision** (`F2_MODE` high): the cut window only *arms*; the exit fires only when the `TREND_OK` pin is also low (price below its 10-month average). The revision exists because the unconditional rule's exits in 1982 and 1984 were soft-landing false positives, while 2001, 2008, and 2020 — where the trend had broken — were the real events.

The top output bit is the call: `INVESTED`, high or low. The remaining outputs expose the window state, the stay-out state, whether an easing cycle is alive, and the running cut count, so the model's entire internal reasoning is observable on the pins.

## How to test

1. Reset with `rst_n` low: the chip comes up INVESTED (`uo[7]` high), threshold 4, F1 mode.
2. Pulse `uio[0]` (CUT) three times: still invested. Pulse a fourth: `uo[7]` drops — the model has stepped out, `uo[5]` (OUT_STATE) is high.
3. Pulse `uio[2]` (MONTH) twelve times: the chip resumes, count cleared.
4. Hold `uio[4]` (F2_MODE) and `uio[3]` (TREND_OK) high and pulse six cuts: the chip stays invested the whole way — the window arms (`uo[6]`) but a healthy trend is never honored. Drop `TREND_OK` and pulse one more cut inside the window: out.
5. Pulse `uio[1]` (HIKE) any number of times in any state: the count resets and the chip stays invested through tightening.
6. Load the optimized threshold: put 6 on `ui[3:0]`, pulse `uio[7]` (LOAD_N); now the exit needs six cuts.

The cocotb suite in `test/` runs all of these plus a 1,500-event random soak against a bit-exact Python reference model. Nothing depends on clock speed.

## External hardware

None required. Any way to drive the strobe pins works (the Tiny Tapeout demo board is sufficient). In its intended desk installation, a tiny daily script feeds real FOMC actions and a trend bit, and the INVESTED pin drives an LED.
