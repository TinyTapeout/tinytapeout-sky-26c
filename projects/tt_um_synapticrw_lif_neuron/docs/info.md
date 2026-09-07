<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A single leaky integrate and fire (LIF) neuron. This is the simplest spiking neuron model there is, and the unit cell of neuromorphic chips like Loihi/TrueNorth (this is 1 of them, those have a million).

There's an 8 bit membrane potential, V_MEM. Every clock:

1. if there was a rising edge on SPIKE_IN, add WEIGHT (0 to 15) to V_MEM. clamps at 255.
2. subtract the leak (LEAK_SEL picks 0/1/2/4 per tick). clamps at 0.
3. if V_MEM >= threshold (128, or 64 with THRESH_SEL on): SPIKE_OUT goes high, V_MEM resets to 0, and the neuron ignores input for 4 cycles (refractory period). SPIKE_OUT stays high for those 4 cycles so you can actually see it.

SPIKE_IN goes through a 2 flop synchronizer + edge detector since it's coming off a switch that has nothing to do with the clock.

The 7 segment display shows the top nibble of V_MEM in hex, so you can watch it charge up (0, 1, 2 ... 8) and then snap back to 0 when it fires. The full 8 bits of V_MEM are also on uio[7:0] if you want to put a logic analyzer on it.

## How to test

TT demo board, 7 seg on uo, dip switches on ui. Run the clock slow (10Hz to 1kHz or so) or you won't see anything happen.

| switch | what |
|---|---|
| ui[0] | SPIKE_IN, toggle it to inject a spike |
| ui[4:1] | WEIGHT, 0 to 15 |
| ui[6:5] | LEAK_SEL: 00 none, 01 = 1/tick, 10 = 2/tick, 11 = 4/tick |
| ui[7] | THRESH_SEL: 0 = fire at 128, 1 = fire at 64 |

Try this first:

1. reset, display shows 0
2. WEIGHT = 15 (ui[4:1] all on), LEAK_SEL = 00, THRESH_SEL = 1
3. toggle ui[0] on and off. each toggle adds 15 so the display goes 0, 0, 1, 2, 3...
4. 5th toggle puts V_MEM at 75 which is over 64, so the decimal point (SPIKE_OUT) lights up and the display drops back to 0
5. now set LEAK_SEL = 01 and do it again. you have to toggle faster than it leaks or it never fires

SPIKE_OUT is uo[7] (the decimal point), V_MEM[7:0] is uio[7:0].

## External hardware

None, the demo board's 7 seg and dip switches are enough. Logic analyzer on uio[7:0] is nice to have.
