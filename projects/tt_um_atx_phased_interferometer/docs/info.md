<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works


1. The two PDM microphones are sampled at 2.56MHz (4x slower than the design), producing a pair of 1-bit real signals
2. These 1-bit real signals are then mixed with a 20kHz (2.560 / 128) complex tone at 6-bits, shifting the 20Khz carrier into DC
3. These complex samples are then averaged over 2^16 samples as a low pass filter stage
4. CORDIC in vectoring mode then computes the phase difference of the two samples, yielding a 7-bit signed integer
5. This integer is then displayed as an one-hot value on an 16-LED bar

The phase angle computed in step 4. is also transmitted over UART for debugging purposes.


## How to test

Connect the designated PMOD PCB. Then, play a 20kHz tone using a phone speaker (preferably only either left or right speaker).
The green LED bar should track the direction of arrival. The UART should transmit
single bytes containing the relative angle computed each integration period.


## External hardware

Built for a PMOD PCB available at the [source repo](https://github.com/atx/phased/tree/master/pcb/interferometer).
It could also possibly be jury rigged from LMD3526B261 modules and a bunch of LEDs
on a breadboard.
