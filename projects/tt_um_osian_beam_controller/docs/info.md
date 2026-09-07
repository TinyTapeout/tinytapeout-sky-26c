<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Programmable Metasurface Beam Controller

## How it works

This project implements a small Verilog controller that generates configurable digital control patterns for a programmable 4 × 4 metasurface array.

The two least significant input bits, `ui_in[1:0]`, select one of four beam-control modes. Each mode produces a different 8-bit pattern on `uo_out[7:0]`.

This initial design demonstrates the digital control principles used when configuring programmable antenna and metasurface elements.

### Beam patterns

| ui_in[1:0] | uo_out[7:0] |
|-------------|--------------|
| `00` | `00000001` |
| `01` | `00000010` |
| `10` | `00000100` |
| `11` | `00001000` |

The design currently uses combinational logic, so the output changes directly when the beam-mode input changes.

The clock, reset and bidirectional pins are not used in this version.

## How to test

1. Enable the design by setting `ena` high.
2. Set `ui_in[1:0]` to the required beam mode.
3. Observe the generated pattern on `uo_out[7:0]`.
4. Test all four input combinations and compare the outputs with the table above.

The automated cocotb testbench also verifies all four beam-mode selections.

## External hardware

To test the design physically, connect:

- Two switches to `ui_in[0]` and `ui_in[1]`
- Eight LEDs, through suitable current-limiting resistors, to `uo_out[7:0]`

No external hardware is required for simulation.
