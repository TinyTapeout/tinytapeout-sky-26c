## How it works

FMAC is a synchronous 8-bit signed **fused multiply-add**: it computes

    z = a * b + c

where `a`, `b`, `c` and `z` are 8-bit two's complement integers. The
product and the sum are carried in 16 bits internally, so no intermediate
overflow is possible (`a*b` is in [-16256, 16384], `a*b+c` in
[-16384, 16511]); `z` is the low 8 bits of the sum (mod-256 wraparound,
e.g. `100 * 100 + 0 = 10000 -> z = 240 = -16`).

A 1x1 tile has 16 input-capable pins but the operation needs 24 operand
bits, so the operands are loaded one byte at a time:

| Pin        | Name   | Role |
|------------|--------|------|
| `ui[2:0]`  | `CMD`  | `000` = load a, `001` = load b, `010` = load c, `011` = GO, `1xx` = reserved |
| `ui[7:3]`  | —      | reserved, tie to 0 |
| `uio[7:0]` | `DATA` | operand byte (input) |
| `uo[7:0]`  | `Z`    | 8-bit signed result |

**Usage**

1. Drive `DATA = a`, `CMD = 000` — `a` is latched on the next rising clock edge
2. Drive `DATA = b`, `CMD = 001`
3. Drive `DATA = c`, `CMD = 010`
4. Drive `CMD = 011` (GO)
5. `Z = a*b + c` is valid one clock later and is held until the next GO

Load commands are level-sensitive: holding a load command keeps latching
`DATA`. After reset `a = b = c = z = 0`, so a GO with nothing loaded
returns 0.

## How to test

The cocotb tests in `test/test.py` cover:

- reset behavior (`z = 0`, GO with no loads returns 0)
- corner cases (min/max operands, wraparound)
- 2000 randomized `(a, b, c)` triples against a Python reference
- the load/GO protocol (result hold, partial reload, repeated GO)

Run with `make` from the `test/` directory (see the Tiny Tapeout test
workflow). A plain-Verilog self-checking testbench is also provided in
`test/tb_selfcheck.v` for quick iverilog runs without cocotb.

## External hardware

None.
