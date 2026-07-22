<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project displays moving color tiles on a VGA 640x480 screen. It's follows the Tiny Tapeout platform.

### Technical Details

Colors are displayed in a mosaic of 9 square tiles. Colors shift each second. Code was created for a Digilent PMod VGA with 4 bit color (12 bits in total), but was rewritten to adapt to TT Pmod VGA where colors are 2 bit. Clock is 25Mhz (640x480 Pixel Clock). 

## How to test

1. Connect a VGA PMOD (such as the Tiny VGA PMOD) to the output pins
2. Connect a VGA monitor
3. Apply power and release reset

### Controls

None

## External hardware

* Tiny VGA PMOD (or compatible RGB222 VGA PMOD)
* VGA monitor or display with VGA input
* Digilent PModVGA can be used but TT Board bidirectional bus has to be configured as output to support 4 bit outputs for each color and outputs have to be assigned to _cor variable.

