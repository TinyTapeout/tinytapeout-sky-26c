<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Custom layout within the 1x1 tile area. Uses csdac255 [from a prior submission of mine](https://github.com/algofoogle/ttsky25b-analog-vga-dacs), modified slightly so it can sink less current. This then acts as the current sink for a 21-stage ring oscillator, allowing for variable oscillation from about 8.7MHz to 26MHz.

## How to test

Set a bias level (`bias[2:0]`), sweep DAC input codes on `uio_in`, and measure the DAC output on `uo_out[6]`.

## External hardware

An oscilloscope would be handy.
