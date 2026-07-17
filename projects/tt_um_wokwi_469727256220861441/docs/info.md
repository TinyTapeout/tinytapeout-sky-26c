<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Uses 3 flip-flops to make a 3-bit counter.

The input pin IN0 is enable, if it's off the counter will stay at current value.

The reset button will reset counter value to 0.

Outputs of the flip-flops are routed to the 3 segments of the 7-segment display to show 3 horizontal tick marks.

Clock frequency is 1 Hz, counter period is 1 second.

## How to test

Reset the counter with a reset button and enable it by turning IN0 switch to "ON".
The 7-segment display should show a horizontal tick marks representing numbers 0-7 in binary. 
