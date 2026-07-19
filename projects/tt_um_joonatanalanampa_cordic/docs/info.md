## How it works

CORDIC-1 is a **standalone sine generator** in one TinyTapeout
tile — a self-playing instrument with no bus, no host, and no software.
Select it, release reset, and it plays.

Inside: a **bit-serial CORDIC engine** — x, y, z as 20-bit shift
registers circulating LSB-first through three 1-bit full adders, sine
from nothing but shifts and adds. Every conversion takes a **constant
359 clocks** regardless of input (data-independent timing = zero
phase-correlated sample jitter), giving ~69.6k conversions/s at 25 MHz.
The engine is verified **exhaustively** (all 65,536 input angles against
reference math, worst error 5 LSB of Q1.15), its output stream is
**FFT-verified** (worst harmonic −65 dBc), and its control path is
**formally proven** (SymbiYosys k-induction, `formal/`): from any
reachable state under any input sequence the schedule invariants hold,
capture lands provably at cycle 357 every time, and `done` pulses
exactly once per operation.
A 20-bit DDS phase accumulator sweeps it continuously, and a
first-order sigma-delta modulator streams the result: **sine on uo[7]** (exactly where the
TT Audio Pmod listens). An RC low-pass (1 kOhm + 100 nF) — or the Audio
Pmod — turns it into a clean analog wave. uo[6] carries a phase-locked
**square wave** at the same frequency: a scope trigger, and the classic
sine-vs-square timbre comparison on the other ear.

Frequency is set live by ui[6:0]:

| code | output |
|---|---|
| 0 (power-on default) | **440 Hz — concert A wake-up tone** |
| 1..126 | code x ~68 Hz (~68 Hz .. ~8.6 kHz) |
| 127 | ~2 Hz breathe mode: the LED bar visibly waves |

uo[5:1] show the live sine level as an offset-binary LED bar, and uo[0]
blinks a ~1.5 Hz **heartbeat** — proof of life visible with nothing
attached at all.

## How to test

Power on, select the design, release reset: the heartbeat LED blinks and
the level bar shimmers immediately — with headphones on the Audio Pmod
you hear concert A. Scope the RC-filtered uo[7]: a 440 Hz sine. Change
ui[6:0]: the pitch follows, ~68 Hz per step. Set all ones (127): the LED
bar breathes a slow visible wave. Trigger the scope from the
uo[6] square: the sine stands rock still — they are phase-locked.

## PPA

From the hardening run's signoff reports (SkyWater 130 nm, nominal
corner tt/25C/1.80V): **area** 1 tile (167x108 um, ~0.018 mm^2), 921
standard cells at 74.0% utilization. **Performance**: ships at 25 MHz,
timing-clean at 50 MHz across all corners, nominal Fmax ~115 MHz; ~69.6k
sine conversions/s at a constant, formally proven 359-cycle period.
**Power**: ~0.56 mW estimated at 25 MHz (OpenSTA statistical estimate;
leakage only 7.8 nW — essentially all power is useful switching).

## External hardware

None required (heartbeat + LED bar work bare). For analog output: an RC
low-pass on uo[7]/uo[6], or the Tiny Tapeout Audio Pmod (it listens on
uo[7]). DIP switches or the demo board's inputs for ui[6:0].
