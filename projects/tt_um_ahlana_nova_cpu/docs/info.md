<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a minimal implementation of a 16-bit Data General Nova architecture, heavily optimized for TT constraints. It utilizes a 4-bit nibble-serial architecture, with the ALU processing 16-bit words over 4 clock cycles. Memory fetches are handled via a custom 1-bit SPI "Memory Extension to Outside World" (MEOW) designed to interface with the demoboard's RP2040.

Current micro-MVP features (early WIP):
* Nibble-serial accumulator shifting
* Basic ALU operations (ADD, COM)
* Historically-accurate blinkenlights (outputs wired to 7seg)

## How to test

**Hardware Operation:**
Press Reset. The CPU immediately begins fetching instructions starting at Memory Address 0 via the SPI interface. 
*Note: physical DIP switch inputs (`ui[7:0]`) are ignored in the current implementation, but I might re-add HALT.*

**Visual Output (`uo`):**
* `uo[3:0]`: Displays the lowest nibble of the Instruction Register.
* `uo[6:4]`: Displays the CPU state in binary (0=Fetch, 1=Wait_Ack, 2=Wait_Done, 3=Decode, 4=Exec, 5=Halt).
* `uo[7]` (dot): Halt flag.

## External hardware

This only requires a Tiny Tapeout demoboard: no external hardware is required. The RP2040 pushes CPU instructions configured via script.
