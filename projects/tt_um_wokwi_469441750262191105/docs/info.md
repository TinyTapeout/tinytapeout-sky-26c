<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Driving a buzzer module by detecting heart rate variability from data provided by a MAX30102 heart rate sensor.
## How to test

1. Drive ui[0] with a repeating pulse (in the Wokwi simulation, this is
the "Beat" pushbutton; on real hardware, any clean digital pulse
source works).
2. Set the clock (clk) to around 5 Hz.
3. Press/pulse ui[0] at a steady rhythm, then vary the timing between
presses.
4. Watch uo[0]–uo[6]: more of these should go high the more the time
between presses changes from one beat to the next, and fewer should
be high when the rhythm is steady.
5. uo[7] should stay low at all times. If it goes high, there's a bug.

## External hardware

This version takes a pre-cleaned digital pulse directly on an input
