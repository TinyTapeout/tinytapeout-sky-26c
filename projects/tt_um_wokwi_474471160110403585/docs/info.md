<!---
# Cylon Eye — 8-LED Bidirectional Scanner

A Battlestar Galactica-style LED scanner on real silicon, up next skin a complete skin job. A single bit sweeps across 8 outputs (LED 1 to 8), bounces off the end, and sweeps back — forever..
-->

## How it works
The core is an 8-bit shift register (8 D flip-flops). A direction flip-flop controls which way the lit bit moves:

- Moving right each flop's D input is fed by its left neighbor's Q through an AND gate enabled by the direction signal.
- Moving left each flop's D input is fed by its right neighbor's Q instead.

Each flop's D input is a 2-AND + OR mux that selects left or right neighbor
based on direction. When the lit bit reaches either end of the chain, the
turn-around detection flips the direction flip-flop, so the light bounces back.

On reset, flop 1 is SET while flops 2–8 and the direction flop are cleared. 

Outputs: `uo[0]`–`uo[7]` map directly to LEDs 1–8.

## How to test
1. Connect 8 LEDs with series current limiting resistors on the anode to the 8 output pins `uo[0]`–`uo[7]`.
2. Provide a clock on the clock pin anything from ~1 Hz to MHz. Though 4-8Hz seems to be the sweet spot.
3. Hold reset LOW to engage, release to stop.
4. Watch the LEDs: a single light should sweep from LED 1 to LED 8, then reverse and sweep back to LED 1, repeating continuously.

Expected output sequence one LED on at a time
1  2  3  4  5  6  7  8  7  6  5  4  3  2  1 ...

## External hardware

8 LEDs and resistors. A switch or pushbutton for reset.  
