## How it works

This project is a simple 4-bit combinational ALU for TinyTapeout. `ui_in[3:0]` is operand A and `ui_in[7:4]` is operand B. `uio_in[2:0]` selects the operation: add, subtract, AND, OR, XOR, left shift, right shift, or equality compare. The 4-bit result is driven on `uo_out[3:0]`, with carry/borrow information on `uo_out[4]` and a zero flag on `uo_out[5]`.

## How to test

Set A on `ui_in[3:0]`, B on `ui_in[7:4]`, then choose an operation using `uio_in[2:0]`. Read the result from `uo_out[3:0]`. The design is combinational and does not require the clock.

Operation codes:

- `000`: A + B
- `001`: A - B
- `010`: A AND B
- `011`: A OR B
- `100`: A XOR B
- `101`: A << 1
- `110`: A >> 1
- `111`: A == B

## External hardware

No external hardware is required.
