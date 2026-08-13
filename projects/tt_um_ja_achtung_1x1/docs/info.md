<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

JA Achtung Compact is a two-player "Achtung, die Kurve!" style game on a single Tiny
Tapeout tile. Each player steers a moving head that leaves a permanent trail;
touching a wall or any trail ends the round.

The chip has no internal framebuffer. Instead it uses an external QSPI PSRAM
(APS6404L) as a 1-bit-per-cell occupancy framebuffer and generates 640x480@60
VGA directly:

- During active video, a display streamer fetches 4-byte bursts from the
  PSRAM and expands each stored bit to 4 VGA pixels.
- During vertical blanking, the game engine gets the PSRAM bus: it advances
  each player on a 4x4-pixel grid, reads the target cell for collision
  detection, and writes the new trail cell back (read-modify-write, one byte
  at a time).
- A small arbiter multiplexes the two clients onto one QSPI PSRAM controller
  (25 MHz SCLK from the 50 MHz system clock).

Player input comes from the Tiny Tapeout Gamepad PMOD (two SNES-style
controllers on one serial interface). A compact decoder extracts only the
buttons the game needs: L/R shoulder buttons turn each player 90 degrees
(edge-triggered), and Start restarts the round after a game over. Player 2's
trail is drawn with a woven "groove" sub-pattern so the two monochrome trails
are distinguishable.

## How to test

1. Connect the VGA PMOD, QSPI PSRAM PMOD, and Gamepad PMOD (pinout below).
2. Assert `rst_n` low before powering the PSRAM. After PSRAM VDD is stable,
   keep `rst_n` low for at least 150 us. During this hold the chip keeps the
   external PSRAM clock low, all chip-select outputs high, and all four SIO lines
   actively low, as required by the APS6404L power-up specification. The
   50 MHz system clock may already be running.
3. Release reset. The chip issues the PSRAM reset and quad-enable sequence,
   waits the required reset recovery time, clears the framebuffer, and starts
   the round.
4. Player 1 turns with L/R on controller 1, player 2 with L/R on
   controller 2. After a crash, press Start on either controller for a new
   round.

In simulation, the full verification suite lives in `Game Simulation/tests/`:
game-logic traces compared bit-exactly against a Python reference model, a
pixel-exact VGA capture test through the real QSPI read path, and a
full-system smoke test through the gamepad protocol. See
`Game Simulation/README.md`.

## External hardware

- [TT VGA PMOD](https://github.com/mole99/tiny-vga) on the dedicated outputs
- [TT QSPI PSRAM PMOD](https://github.com/mole99/qspi-pmod) (APS6404L) on the
  bidirectional pins
- [TT Gamepad PMOD](https://github.com/psychogenic/gamepad-pmod) with one or
  two controllers on inputs 4-6
- VGA monitor
