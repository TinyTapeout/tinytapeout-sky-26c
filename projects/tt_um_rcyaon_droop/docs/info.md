<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

An all-digital supply droop detector. A ring oscillator's frequency is a strong
function of its local supply: gate delay scales roughly with $C_L V_{DD} / I_D$,
and $I_D$ collapses as $(V_{DD}-V_{th})$ shrinks, so a few percent of droop shows
up as a few percent of frequency shift. The tile carries three pieces:

- **Sensor** (`ro_osc.v`, `droop_sensor.v`): a nand-enabled ring of 25
  `dlygate4sd3` cells feeding a 10-stage async ripple divider. One tapped bit
  (÷16 … ÷1024) crosses into the system clock domain through a 2ff
  synchronizer; nothing multi-bit ever crosses.
- **Aggressor** (`aggressor.v`): 64 flops toggling on the same clock edge, in
  continuous / single-burst / periodic-burst modes. Every toggle pulls a
  synchronized slug of dynamic current through the tile's rail: a controlled,
  repeatable di/dt event.
- **Measurement**: period mode counts clock cycles per divided-RO period (fast
  sampling: droop ⇒ RO slows ⇒ count **rises**). Frequency mode counts
  divided-RO edges in an 8192-clock window (slow, high resolution, for the
  static transfer curve).
- **Self-test source** (`uio[2]`): a clk/2 square wave that replaces the ring at
  the input of the divider. Its counts are exact and known, so the divider,
  synchronizer, both measurement modes and the saturation flag can be checked
  without trusting the oscillator. It is also what makes the measurement path
  runnable in gate-level simulation: under the sky130 `FUNCTIONAL` cell models
  every combinational cell is zero-delay, so the hardened ring is a zero-delay
  loop that stalls an event simulator at a single timestamp.

What this measures is the *envelope* of the supply excursion at µs-ish
timescales set by the divided-RO sample rate (package/board-level sag against
the decoupling network), not the ns-scale instantaneous notch.

## How to test

1. **Self-test**: set `uio[2]=1` and the sensor measures a clk/2 square wave
   instead of the ring. Period mode then reads 33 counts at tap ÷16 and 129 at
   ÷64 (the divider periods of a clk/2 source, plus one clock of synchronizer
   offset), and pins at 0xff with `uio[6]` raised at ÷256. Wrong numbers here
   mean the counting path is broken rather than the supply. Clear `uio[2]` to
   return to the ring.
2. **Baseline**: RO off vs on (`ui[7]`), log the divided-RO frequency per tap on
   `uio[5]` with a scope or counter.
3. **Static calibration (frequency mode)**: set `ui[6]=1`, power the breakout
   from a bench supply, sweep VDD and record the sample byte on `uo[7:0]` versus
   voltage. This is the sensor's transfer curve; everything after is read
   through it.
4. **Droop (period mode)**: set `ui[6]=0`, arm periodic bursts (`ui[1:0]=11`),
   trigger the scope on `uio[4]` (aggressor active) and capture the sample
   stream on `uo[7:0]` with a logic analyzer clocked by `uio[3]` (valid). Sweep
   burst length on `ui[5:3]` and overlay the captures.

If `uio[6]` (saturation) goes high, the sample has pinned at 0xff: select a
lower divider tap on `uio[1:0]`.

## External hardware

None required for the ASIC. A bench supply plus a scope or logic analyzer is
enough; `uio[5]` (divided RO), `uio[4]` (aggressor active) and `uio[3]` (valid)
are the useful probe points.

An optional Tang Nano 20K port of the same RTL lives in `fpga/`, which streams
samples over the onboard USB-UART at 115200 baud.
