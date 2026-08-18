<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The project is a simple 3-bit pattern detector built from combinational logic. It monitors inputs IN0, IN1, and IN2 and sets OUT0 HIGH only when the input pattern is 101.
The circuit implements the Boolean expression:
OUT0 = IN0 AND NOT(IN1) AND IN2
IN1 is inverted using a NOT gate, and two AND gates combine the three conditions. The design has no memory or stored state, so the output changes immediately when the inputs change.

## How to test
Set the first three input switches to the desired pattern:
IN0 = 1
IN1 = 0
IN2 = 1
OUT0 should go HIGH when the input is 101.
Try any other combination, such as 111, 001, or 100, and OUT0 should remain LOW. IN3–IN7 are unused.
No clock or reset is required because this is a purely combinational circuit.

## External hardware
No external hardware is required. The design can be tested using the input switches and output indicators provided by the Tiny Tapeout demo board.
