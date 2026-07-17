<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project currently works by including a 8-bit shift register connected to the bus. The SI pin can be used to shift data into the register, and the ESO pin determines whether the shift-register will output to the bus. The bus is a conjunction of OR-gates making it one directional (as simply combining the wires seems less possible). There is a tri-state buffer that connects to two registers (register A and B) allowing them to interact with the bus. The direction is controlled using DIRA and DIRB. If the DIRA/DIRB sets the direction to be using the bus as an input, LA/LB determines whether the register should load what is on the bus. Register B is connected to the ALU and may be inverted to form a 2's Compliment substraction using the AS pin. The ALU will thus perform addition or subtraction depending on the state of AS. It will take Register A as the other input and output to the bus if the EAO pin is pulled high.

## How to test

Input your two numbers MSB first (using the SI pin), pulsing the clock after inputting each individual bit. Set the ESO pin high to output the contents of the shift-register to the bus. Leave DIRA and DIRB on their default to allow information to stream in from the bus (inverting them will output the contents of register A or B to the bus). Set LA or LB appropriately depending on where you would like to load information. Pulse the clock to load information from the bus to any listening registers. Reset LA/LB to prevent accidentally overwriting data from the bus. Whenever Register A and B are set correctly, set the AS pin depending on whether you desire to add or subtract register B. Set the EAO pin high to output the contents of the ALU to the bus. The output pins will mirror the bus and be produced with OUT0 indicating the LSB and OUT7 indicating the MSB.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
