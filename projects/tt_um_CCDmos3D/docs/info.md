<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

binary search adc, 8bits

## How to test

The circuit generates it's own input signal and gives the output of this to first analog pin, and feeds this signal into the ADC and is converted to a digital signal, which is converted again by a DAC to an analog signal that is connected to the second analog output pin. Both analog output signals are compared and must be equal.

## External hardware

Power source for the chip, plus a scope to measure both output signals.
