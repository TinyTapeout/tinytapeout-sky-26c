# UART VGA Text Scroller

## Overview

This project implements a UART-controlled scrolling text display for a 640 × 480 VGA monitor. Text is received through a 9600-baud UART interface, stored in an internal 32-character message buffer, rendered using a 5 × 7 font scaled by 4×, and continuously scrolled from right to left across the VGA display.

The text and background colours can be selected using the Tiny Tapeout input pins. Scroll speed can also be changed, and scrolling can be paused.

## Features

- 640 × 480 VGA output
- 9600-baud UART receiver
- UART format: 8 data bits, no parity, 1 stop bit (8-N-1)
- Maximum message length: 32 characters
- 5 × 7 character font
- 4× font scaling
- 32 × 32 pixel character cell
- Continuous right-to-left scrolling
- Four selectable scroll speeds
- Pause/resume control
- Four selectable text colours
- Four selectable background colours
- Lowercase letters are converted to uppercase
- Enter / carriage return restarts the scrolling position

## UART Operation

UART data is received through `ui_in[3]`.

Use the following serial settings:

- Baud rate: **9600**
- Data bits: **8**
- Parity: **None**
- Stop bits: **1**
- Flow control: **None**

The design accepts up to 32 characters in one message.

After entering the required message, send a carriage return (`CR`, ASCII `0x0D`) or line feed (`LF`, ASCII `0x0A`). This resets the write pointer and restarts the scrolling position from the right side of the screen.

Lowercase alphabetic characters are automatically converted to uppercase.

## Supported Characters

The font supports:

- `A`–`Z`
- `0`–`9`
- Space
- `.`
- `-`
- `!`
- `?`
- `:`

Unsupported characters are displayed as blank characters.

## Input Pins

| Pin | Function |
|---|---|
| `ui_in[0]` | Scroll speed bit 0 |
| `ui_in[1]` | Scroll speed bit 1 |
| `ui_in[2]` | Pause scrolling |
| `ui_in[3]` | UART RX |
| `ui_in[4]` | Text colour bit 0 |
| `ui_in[5]` | Text colour bit 1 |
| `ui_in[6]` | Background colour bit 0 |
| `ui_in[7]` | Background colour bit 1 |

## Scroll Speed Selection

The scroll speed is selected using `ui_in[1:0]`.

| `ui_in[1:0]` | Scroll speed |
|---|---|
| `00` | 1 pixel per frame |
| `01` | 2 pixels per frame |
| `10` | 4 pixels per frame |
| `11` | 8 pixels per frame |

Set `ui_in[2] = 1` to pause the scrolling text.

Set `ui_in[2] = 0` to resume scrolling.

## Text Colour Selection

Text colour is selected using `ui_in[5:4]`.

| `ui_in[5:4]` | Text colour |
|---|---|
| `00` | White |
| `01` | Yellow |
| `10` | Cyan |
| `11` | Magenta |

## Background Colour Selection

Background colour is selected using `ui_in[7:6]`.

| `ui_in[7:6]` | Background colour |
|---|---|
| `00` | Black |
| `01` | Dark blue |
| `10` | Dark green |
| `11` | Dark red |

For example, to display **yellow text on a dark-blue background**:

```text
ui_in[5:4] = 01
ui_in[7:6] = 01
```

## VGA Output Pins

The project uses the TinyVGA RGB222 output convention.

| Pin | VGA signal |
|---|---|
| `uo_out[0]` | Red bit 1 (`R1`) |
| `uo_out[1]` | Green bit 1 (`G1`) |
| `uo_out[2]` | Blue bit 1 (`B1`) |
| `uo_out[3]` | VSYNC |
| `uo_out[4]` | Red bit 0 (`R0`) |
| `uo_out[5]` | Green bit 0 (`G0`) |
| `uo_out[6]` | Blue bit 0 (`B0`) |
| `uo_out[7]` | HSYNC |

The RGB outputs provide 2 bits per colour channel, giving 64 possible RGB222 colour combinations.

## Bidirectional Pins

The `uio_in`, `uio_out`, and `uio_oe` pins are not used by this design.

## Display Operation

Each character uses a 5 × 7 bitmap font scaled by 4×.

This produces a visible glyph size of approximately:

```text
20 × 28 pixels
```

inside a:

```text
32 × 32 pixel character cell
```

With a maximum of 32 characters, the complete message can be up to:

```text
32 × 32 = 1024 pixels
```

wide. Since this is wider than the 640-pixel VGA display, the message scrolls across the screen from right to left.

## Clock

The design is intended to operate with a clock of approximately:

```text
25.175 MHz
```

which is suitable for 640 × 480 VGA timing.

## Example

With:

```text
UART message: HELLO MITS
ui_in[1:0] = 01
ui_in[2]   = 0
ui_in[5:4] = 01
ui_in[7:6] = 01
```

the display shows:

```text
HELLO MITS
```

scrolling from right to left at 2 pixels per frame, using yellow text on a dark-blue background.

## Tiny Tapeout Configuration

- Top module: `tt_um_nobleg30_uart_vga_scroller`
- HDL: Verilog
- Tile size: 1 × 2
- Clock frequency: 25.175 MHz
