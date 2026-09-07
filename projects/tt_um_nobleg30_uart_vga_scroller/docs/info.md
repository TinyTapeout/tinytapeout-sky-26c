# UART VGA Text Scroller with 2-bit ALU

## Overview

This Tiny Tapeout design contains two independent blocks:

1. A UART-controlled 640 × 480 VGA scrolling-text display.
2. A 2-bit combinational ALU on the bidirectional pins.

The VGA block receives up to 32 characters at 9600 baud, stores the message internally, renders a 5 × 7 font at 4× scale, and scrolls the text continuously from right to left. Text colour, background colour, scroll speed, and pause are selectable through `ui_in[7:0]`.

The ALU is purely combinational and operates independently of the VGA/UART logic.

## VGA / UART Features

- 640 × 480 VGA
- 9600 baud, 8-N-1 UART
- Maximum 32-character message
- 5 × 7 font scaled 4×
- 32 × 32 pixel character cell
- Four scroll speeds
- Pause/resume
- Four text colours
- Four background colours
- Lowercase converted to uppercase
- CR or LF restarts scrolling

## Dedicated Inputs

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

## Scroll Speed

| `ui_in[1:0]` | Speed |
|---|---|
| `00` | 1 pixel/frame |
| `01` | 2 pixels/frame |
| `10` | 4 pixels/frame |
| `11` | 8 pixels/frame |

## Text Colour

| `ui_in[5:4]` | Colour |
|---|---|
| `00` | White |
| `01` | Yellow |
| `10` | Cyan |
| `11` | Magenta |

## Background Colour

| `ui_in[7:6]` | Colour |
|---|---|
| `00` | Black |
| `01` | Dark blue |
| `10` | Dark green |
| `11` | Dark red |

## VGA Outputs

| Pin | VGA signal |
|---|---|
| `uo_out[0]` | R1 |
| `uo_out[1]` | G1 |
| `uo_out[2]` | B1 |
| `uo_out[3]` | VSYNC |
| `uo_out[4]` | R0 |
| `uo_out[5]` | G0 |
| `uo_out[6]` | B0 |
| `uo_out[7]` | HSYNC |

## 2-bit Combinational ALU

### Pin allocation

| Pin | Direction | Signal |
|---|---|---|
| `uio[0]` | Input | `A[0]` |
| `uio[1]` | Input | `A[1]` |
| `uio[2]` | Input | `B[0]` |
| `uio[3]` | Input | `B[1]` |
| `uio[4]` | Input | `SEL[0]` |
| `uio[5]` | Input | `SEL[1]` |
| `uio[6]` | Output | `Y[0]` |
| `uio[7]` | Output | `Y[1]` |

Thus:

```text
A   = uio[1:0]
B   = uio[3:2]
SEL = uio[5:4]
Y   = uio[7:6]
```

The bidirectional output-enable value is:

```text
uio_oe = 11000000
```

so `uio[5:0]` are inputs and `uio[7:6]` are outputs.

### ALU functions

| `SEL[1:0]` | Operation | Expression |
|---|---|---|
| `00` | Addition | `Y = A + B` |
| `01` | Subtraction | `Y = A - B` |
| `10` | Bitwise AND | `Y = A & B` |
| `11` | Bitwise XOR | `Y = A ^ B` |

The ALU result is two bits wide. Addition and subtraction therefore operate modulo 4.

Example:

```text
A   = 11  (3)
B   = 10  (2)
SEL = 00

3 + 2 = 5
2-bit Y = 01
```

## Supported Characters

- A–Z
- 0–9
- Space
- `.`
- `-`
- `!`
- `?`
- `:`

## Clock

The VGA/UART block is designed for approximately 25.175 MHz.

The ALU is combinational and does not require the clock.

## Tiny Tapeout Configuration

- Top module: `tt_um_nobleg30_uart_vga_scroller`
- HDL: Verilog
- Tile size: 1 × 2
- Clock: 25.175 MHz
