## How it works

This project implements a UART-programmable scrolling text display for a VGA monitor.

The design receives 9600-baud, 8-N-1 serial data on `ui_in[3]`. Printable characters are converted to a compact 6-bit internal character code and stored in a 16-character message buffer. Lowercase letters are displayed as uppercase.

A 640x480 VGA timing generator creates the horizontal and vertical synchronization signals. The text renderer uses a 5x7 font scaled by two inside a 16x16 character cell. Pixels are generated directly from the current VGA coordinates, so the design does not require a framebuffer.

Pressing Enter (CR or LF) restarts the current message at the right edge of the display. After Enter, the next received character starts a new message and overwrites the previous one from character position 0.

`ui_in[1:0]` selects the scrolling speed:

- `00`: 1 pixel per frame
- `01`: 2 pixels per frame
- `10`: 4 pixels per frame
- `11`: 8 pixels per frame

Set `ui_in[2]` high to pause scrolling.

Supported displayed characters are A-Z, 0-9, space, `.`, `-`, `!`, `?`, and `:`. Lowercase A-Z is converted to uppercase. Other printable characters appear as spaces.

## How to test

1. Run the project with a clock near 25.175 MHz.
2. Connect a VGA monitor through the TinyVGA Pmod/output interface.
3. Open the Tiny Tapeout demo-board serial console.
4. Configure the serial connection for 9600 baud, 8 data bits, no parity, and 1 stop bit.
5. Send a message of up to 16 characters, for example `HELLO MITS`.
6. Press Enter.
7. The message should enter from the right side of the VGA display and scroll toward the left.
8. Use `ui_in[1:0]` to change the speed and `ui_in[2]` to pause/resume the movement.

## External hardware

- VGA monitor
- TinyVGA Pmod or equivalent VGA resistor/interface board
- Tiny Tapeout demo board for clock generation and USB/UART input
