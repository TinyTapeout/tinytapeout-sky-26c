<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This Tiny Tapeout project generates a real-time VGA animation of NASA’s Space Launch System orbiting a crescent moon against a star-filled background. A compact Minsky circle oscillator updates the rocket’s position once per video frame, while simple counters animate the flickering engine flames. 


## How to test

Connect the VGA output to a compatible monitor or VGA capture device, then power the board and load the design. The playground animation should appear automatically once the system is running.

Verify that:

The monitor detects a stable VGA signal.
The full animation is visible and centered on the screen.
Shapes move smoothly without flickering or tearing.
Colors display correctly.
The animation loops continuously without freezing.

For simulation testing, run the project testbench and confirm that the horizontal sync, vertical sync, and RGB outputs match the expected VGA timing. A waveform viewer or VGA simulation tool can be used to inspect the generated frames before testing on physical hardware.

## External hardware

Tiny Tapeout Demo Board with the project loaded
VGA PMOD or compatible VGA output adapter
VGA-compatible monitor or display
VGA cable
USB cable for power
USB power source or computer
