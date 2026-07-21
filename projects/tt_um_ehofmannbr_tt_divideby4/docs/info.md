<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A simple VGA 640x480 screen with fixed color shifting tiles.  

## How to test

rst_in(Active low Reset) input should be connected to a single pole single throw switch. rst_in should be pulled up to 3.3V using a 2K2 resistor. The other side of the switch should be connected to GND.
clk input must be 50Mhz; it is divided internally by 2 to supply 25 Mhz VGA pixel clock for 640x480 screen mode. 
All 8 bits of bidirectional bus are configured as outputs. 
The connection from TT board to PmodVGA is as follows:
uo_out[7]-> R3, uo_out[6]-> R2, uo_out[5]-> R1, uo_out[4]->R0
uo_out[3]-> G3, uo_out[2]-> G2, uo_out[1]-> G1, uo_out[0]->G0
uio_out[7]->B3, uio_out[6]->B2, uio_out[5]->B1, uio_out[4]->B0
uio_out[3]->HS, uio_out[2]->VS
uio_out[1] and uio_out[0] output binary 0.
Enjoy the color screen.

## External hardware

Works with Digilent PmodVGA board with 12 color inputs (4R, 4G and 4B), horizontal and vertical signals. 
