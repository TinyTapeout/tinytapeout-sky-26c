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
Enjoy the color screen.

## External hardware

Works with Digilent PmodVGA board with 12 color inputs (4R, 4G and 4B), horizontal and vertical signals. 
