<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Logic to spin 7 segment display.

Clock is expected to be 2hz.

Uses D flip-flops with reset to sequence like a shift register the segments of the dislay, only for the outer 6 segements A, B, C, D, E, F

The D flip-flips feed the !Q inverted output to the start of the FF, but this is fliped to the Q out of the first FF via a multiplexer.  
The muliplexer is controled by input IN0, setting to "1" has the affect to stop the sequence after the FF's progress 6 shifts.  

Revesing is done by muliplexers switching the FF outputs to the display.

Reset clears all the display.

Input IN0 stops the sequence after its full 6 shifts.

## How to test

Set clock and watch the display. Push resest. Flip input IO0 high or low.

## External hardware

Switches for In0 and In1. 7 Segment display for Out0 to Out5.
