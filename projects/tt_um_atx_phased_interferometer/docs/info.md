<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

1. Samples two PDM microphones at 2.56MHz (1-bit real samples)
2. mixes this with a synthetic 6-bit oscillator running at 20kHz (2.56MHz/128), resulting in complex samples with 20kHz centered at DC
3. low pass by averaging for a 2^14 amount of samples
4. use CORDIC to compute the phase difference between the left and right mics
5. display this as an one-hot value on the top LED bar.


## How to test

Connect the designated PMOD PCB. Then, play a 20kHz tone using a phone speaker.
The green LED bar should track the direction of arrival.


## External hardware

Built for a PMOD PCB available at https://github.com/atx/phased/tree/master/pcb/interferometer
. Can also possibly be jury rigged from LMD3526B261 modules and a bunch of LEDs
on a breadboard.
