## How it works

The default behavior of the design is meant to be run at frequencies around 1-5Hz and does a little spinning and text display on the seven segment display. However, the second part of the design implements VGA output! It will display a little logo (the logo of the CTF team I am participating in) on a VGA monitor if you flip DIP switch 1 and run it at 25.175MHz.

## How to test

Either run at 1-5Hz in default and look at the spinning on the seven segment display, or run at 25.175 Mhz and flip DIP switch 0/pull input 0 to high to enable VGA output.

## External hardware

To look at the VGA output, you will need a VGA capable monitor and cable, plus the TinyTapeout VGA pmod.
