<!---
This file is used to generate your project datasheet.
-->

## How it works

This chip is a risk-management model the author built in the mid-2000s and ran through two decades of institutional practice, cast in silicon. The rule is deliberately simple: **count the Federal Reserve's rate cuts.** Easing cycles that go deep usually mean something is breaking. When the cut count reaches a threshold, step out of the market. Stay invested through tightening cycles, which have historically been rising-market regimes.

The chip advances on discrete **events**, not wall time — one event per clock edge: a `CUT` strobe when the Fed cuts, a `HIKE` strobe when it raises, and a `MONTH` strobe that drives the internal clocks. The easing cycle resets on any hike or after twelve months of Fed inaction.

It carries **three generations of the same model**, selectable at runtime:

- **F1, the 2006 original** (`F2_MODE` low): the production state machine, ported from the recovered WatchPoint workbook spec and graded bit-exact in study P4 (PREREG_P4_F1_TRUE_SPEC_2026-08-05). Three states. **ARMED**: the cycle's first cut anchors an 18-month clock; the fourth cut steps out, unconditionally. **RISKOFF**: a hike exits *immediately* and re-arms (the 1983/1985 fix — three-month lockouts instead of twelve); otherwise the machine returns to the market 18 months after the *cycle start* — the first cut, not the trigger (the 2001/2020 fix) — into **NEUTRAL**: invested, but the trigger is disarmed and further cuts are ignored (the 1991/2003/2008 structural rule) until the next hike re-arms it. The workbook's 18 × (365/12)-day clock is abstracted to 18 `MONTH` strobes from the cycle-start cut.
- **The optimized variant**: load `N = 6` through the `LOAD_N` strobe.
- **F2, the validated revision** (`F2_MODE` high): the cut window (cuts `N` through `N+2` of a live cycle) only *arms*; the exit fires only when the `TREND_OK` pin is also low (price below its 10-month average), and each qualifying cut restarts a twelve-month stay-out. The revision exists because the unconditional trigger's exits in 1982 and 1984 were soft-landing false positives, while 2001, 2008, and 2020 — where the trend had broken — were the real events. (F1's own hike-exit cut those two false positives to three months each; F2 avoids them entirely.)

The top output bit is the call: `INVESTED`, high or low. The remaining outputs expose the arming state (`uo[6]`: F2's cut window, F1's ARMED state — low in NEUTRAL), the stay-out state, whether an easing cycle is alive, and the running cut count, so the model's entire internal reasoning is observable on the pins.

## How to test

1. Reset with `rst_n` low: the chip comes up INVESTED (`uo[7]` high), ARMED (`uo[6]` high), threshold 4, F1 mode.
2. Pulse `uio[0]` (CUT) three times: still invested. Pulse a fourth: `uo[7]` drops — the model has stepped out, `uo[5]` (OUT_STATE) is high.
3. Pulse `uio[2]` (MONTH) eighteen times (the cuts above came back-to-back, so the cycle-start clock has its full run left): the chip goes NEUTRAL — invested again (`uo[7]` high) but disarmed (`uo[6]` low). Pulse CUT any number of times: nothing fires. Pulse `uio[1]` (HIKE) once: re-armed (`uo[6]` high).
4. Alternatively, from OUT_STATE pulse HIKE immediately: the chip re-enters and re-arms on the spot — the 1983/1985 behavior.
5. Hold `uio[4]` (F2_MODE) and `uio[3]` (TREND_OK) high and pulse six cuts: the chip stays invested the whole way — the window arms (`uo[6]`) but a healthy trend is never honored. Drop `TREND_OK` and pulse one more cut inside the window: out. Twelve MONTH pulses later it resumes.
6. Pulse HIKE any number of times in any state: the count resets and the chip stays invested through tightening.
7. Load the optimized threshold: put 6 on `ui[3:0]`, pulse `uio[7]` (LOAD_N); now the exit needs six cuts.

The cocotb suite in `test/` runs all of these, the seven graded easing-cycle episodes from the P4 ledger (1983, 1985, 1989–94, 2001–04, 2008–15, 2020–22, and the live 2024 cycle) as directed tests, plus a 1,500-event random soak, all against a bit-exact Python reference model. Nothing depends on clock speed.

## External hardware

None required. Any way to drive the strobe pins works (the Tiny Tapeout demo board is sufficient). In its intended desk installation, a tiny daily script feeds real FOMC actions and a trend bit, and the INVESTED pin drives an LED.
