## How it works

JA Achtung Full is the full two-player *Achtung, die Kurve!* engine for a Tiny Tapeout
`1x2` footprint. Each player steers a continuously rotating head, leaves a
trail with periodic passable gaps, and loses on contact with a wall, either
trail, or the other head.

The chip stores its 640×480 framebuffer in an external QSPI PSRAM. Four 2-bit
pixels are packed into each byte and the display streamer fetches 8-byte bursts
(32 pixels) for VGA. During vertical blanking, the game engine uses the same
PSRAM port for collision reads and read-modify-write trail updates.

Player positions use Q10.6 fixed-point coordinates and a compact quarter-wave
lookup implements 64 movement directions. The angle phase registers each
move's vector before address and collision calculation. A held boost button can
add one extra move in a frame. Diagonal moves fill an adjacent side pixel so
the trail remains continuous.

Both SNES-style controllers share the Gamepad PMOD serial interface. The lobby
lets each player choose a distinct color before Start begins the round;
disconnected all-ones controller data is ignored.

## How to test

1. Connect the VGA PMOD, QSPI PSRAM PMOD, and Gamepad PMOD.
2. Assert `rst_n` low before powering the PSRAM. After PSRAM VDD is stable,
   keep `rst_n` low for at least 150 us. During this hold the chip keeps the
   external PSRAM clock low, all chip-select outputs high, and all four SIO lines
   actively low, as required by the APS6404L power-up specification. The
   50 MHz system clock may already be running.
3. Release reset. The chip issues the PSRAM reset and quad-enable sequence,
   waits the required reset recovery time, and displays the color-selection
   lobby.
4. Use the D-pad to choose colors and A to confirm; Select unlocks a confirmed
   color. Press Start when both players are ready. The chip then clears the
   framebuffer while retaining the lobby overlay and starts the round.
   If both players confirm the same free color on the same report, player 1
   reserves it and player 2 remains unconfirmed until choosing another color.
5. Steer with Left/Right or L/R and use A for boost. After game over, Start
   rematches with the retained colors, or Select returns that player to the
   lobby and unlocks their color.

The automated suite in `Game Simulation/tests/game_2x1/` compares 23
full-resolution and 24 coarse-resolution game traces with an independent
Python framebuffer model, captures a true 640×480 VGA frame through QSPI, and
drives the complete gamepad/QSPI/arbitration path.

## External hardware

- Tiny Tapeout VGA PMOD
- APS6404L-compatible QSPI PSRAM PMOD
- Tiny Tapeout Gamepad PMOD with two SNES-compatible controllers
- VGA monitor
