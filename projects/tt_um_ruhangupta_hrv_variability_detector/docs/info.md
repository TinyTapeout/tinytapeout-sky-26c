<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a **sample/bring-up stage**, not the full fatigue-monitor ASIC. It is
a direct Verilog port of a hand-built Wokwi gate diagram, used to prove out
the toolchain and one building block: the magnitude and direction of the
change in pulse-to-pulse interval from one detected beat to the next. There
is no I2C, no MAX30102 interface, no calibration/baseline, no persistence
counter, and no alert logic here -- those are separate modules, built and
tested on their own later.

A free-running 3-bit counter counts clock ticks since the last detected
beat. On each new beat (a pulse on `ui[0]`), the counter's value just
before it resets -- the interval that just finished -- is captured into a
second 3-bit register, the "previous interval". Every cycle, the design
continuously computes

```
diff = (ticks since last beat) - (previous interval)
```

and reports `|diff|` as a 7-line thermometer code (`uo[6:0]`, one bit per
threshold 1 through 7) plus a direction bit (`uo[7]`): 1 means the elapsed
time is still short of the previous interval (pace speeding up so far this
interval), 0 means it has caught up to or passed it. The previous-interval
register is also exposed directly on `uio[2:0]` for debug.

Two deliberate departures from the literal Wokwi gate diagram, both
required to make this synthesizable as a normal single-clock-domain ASIC:

1. The Wokwi version clocked its "previous interval" flip-flops directly
   off the beat button -- a second, independent clock. A real chip has one
   clock net, so here `ui[0]` is treated as ordinary data: synchronized
   with a 2-flop synchronizer, with a rising edge on the synchronized
   signal triggering the latch, all on the single `clk`.
2. The Wokwi flip-flops had no reset. Real silicon powers up in an unknown
   state, so `rst_n` forces known start values.

Known limitation, carried over unchanged from the Wokwi version: the
counter and register are only 3 bits wide (0-7 clock ticks), so an interval
longer than 7 clock ticks silently wraps. This is fine for a toolchain/logic
bring-up sample.

## How to test

1. Reset the design (`rst_n` low then high).
2. Drive `ui[0]` with a repeating pulse (a clean digital pulse; on real
   hardware this will eventually come from a peak detector).
3. Watch `uo[0]`-`uo[6]`: more of these go high the more the time between
   beats changes from one interval to the next, fewer when the rhythm is
   steady.
4. `uo[7]` reads 1 whenever the time elapsed since the last beat is still
   short of the previous interval, and drops to 0 once it catches up to or
   passes it -- this happens continuously, not just at the instant of a
   beat.
5. `uio[2:0]` shows the previous captured interval directly, for debug.

The cocotb testbench in `test/` verifies reset behaviour, the free-running
counter against a zero baseline, beat capture of the previous interval, the
direction bit in both the "running short" and "caught up" cases, and the
3-bit wraparound.

## External hardware

None required for bring-up. `ui[0]` can be driven by a pushbutton (as in
the original Wokwi diagram) or any clean digital pulse source. `uo[7:0]`
can drive LEDs for a bargraph-style visualization of the interval
difference, and `uio[2:0]` can optionally be observed for debug.
