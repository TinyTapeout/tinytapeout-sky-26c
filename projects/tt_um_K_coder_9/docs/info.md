<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The module takes in a speed selection input and pulse duration then changes the frequency of the electrical impulses being generated. This project just demonstrates how a digital method can control the pulses through a PWM generator however in reality TENs devices are complicated and involve many more components outside of a digital pulse controller. The design involves an input signal to set the speed to high low and the mode to continuous or burst mode. Leaving the mode on continuous means the output will behave like and expected PWM_generator with the same frequency as selected and no interruptions between cycles. However selecting burst mode masks the pulse in an envelope  producing a burst of pulses for 200ms and pausing for 800ms.

The output of the PWM signal is expected to be 150Hz on high speed and 10 Hz on low speed.
## How to test

- set the duty ratio inputs ui_in to a number between 0 -255
- first select the continuous mode leaving uio_in[0] as 0 and probe uo_out[0] pin
- turn on burst mode and adjust the time base as necessary then view output on oscilloscope
- on burst mode the pulses should be present for 200ms and off for 800ms

## External hardware
The output of the design is a PWM signal so an oscilloscope is necessary to view the output on uo_out[0]

