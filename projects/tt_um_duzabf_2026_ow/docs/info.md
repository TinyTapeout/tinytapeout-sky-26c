<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a simple 8-bit counter with a display showing counter 16 value.
The input switches set the reset value of the counter.
Counter reset is synchronous.
The lower 4 bits of the counter value is converted to the symbol for 7 segment display.
Will be improved in the future.

## How to test

Set the input switches to value 0 (all off).
Reset the device, set the clock to 1 Hz.
Each second the 7 segment display should show a new symbol from "0" to "F".

Set the input switches to value 11. Reset the device.
Send one clock pulse, the display should show 'b'.
Enable 1 Hz clock, the display will continue showing hex numbers starting from 'b';

## External hardware

None
