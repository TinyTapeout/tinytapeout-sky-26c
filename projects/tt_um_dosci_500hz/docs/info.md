<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is a simple Digital Oscillator that outputs a waveform of 500 Hz via UART(115200 bps 8n1). The system has an asyncronous reset (assert) but synchronous assert.
The internal comms between the osci and the tx115 is done via AXI4-Lite.

## How to test

Just clock the circuit after a reset and look at what you get at the output, is it a sinusoid with T = 2 ms?

## External hardware

No external hardware, only possibility to send data to pc via uart.
