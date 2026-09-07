<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This tile contains four instances of a 1.8V rail-to-rail opamp. The input pins are connected directly
to all instances and the outputs are multiplexed to a single output pin.

## How to test

Select an instance by setting the digital pins `select[1:0]` accordingly, then pull `enable` high.
The corresponding opamp should then function.

The compensation is not very good, so it might not be unity-gain stable in real life. It is
optimized for ~10pF load capacitance.

## What to test

### Input offset voltage
I'm curious how the offset voltage compares to Monte Carlo simulations. The offset voltage will be
different depending on which input pair is active so check at multiple common-mode voltages.

### Stability
Check the overshoot/ringing in a step response when configured as a unity-gain follower. Try different
load capacitances. Results will likely be poor. Measuring the open-loop frequency response would be interesting.

### CMRR/PSRR
The CMRR from Monte Carlo simulations is not very good. With perfect matching it would be ~100dB.

