## How it works

FMAC is a synchronous 8-bit signed **fused multiply-add**: it computes

    z = a * b + c

where `a`, `b`, `c` and `z` are 8-bit two's complement integers. The
product and the sum are carried in 16 bits internally, so no intermediate
overflow is possible (`a*b` is in [-16256, 16384], `a*b+c` in
[-16384, 16511]); `z` is the low 8 bits of the sum (mod-256 wraparound,
e.g. `100 * 100 + 0 = 10000 -> z = 240 = -16`).

**Streaming protocol (one result every 2 cycles)**

Both input buses carry data, so two operands are loaded per cycle. The
design free-runs a 2-phase toggle (starting in phase 0 after reset):

| Cycle (phase) | `ui[7:0]` | `uio[7:0]` | `uo[7:0]` |
|---------------|-----------|------------|-----------|
| even (phase 0) | `a` | `b` | previous `z` |
| odd  (phase 1) | `c` | (unused) | — |

On each even cycle the design captures `a` (from `ui`) and `b` (from
`uio`); on each odd cycle it captures `c` (from `ui`) and latches
`z = a*b + c`. A result is valid on `uo` one cycle after its `c` is
presented — **one result every 2 cycles**.

**Usage**

1. Hold `rst_n` low for a few cycles, then release it. The design starts in phase 0.
2. On an even cycle, drive `ui = a`, `uio = b`.
3. On the next (odd) cycle, drive `ui = c`.
4. Read `z` on `uo` the following even cycle.
5. Repeat with the next `(a, b, c)` triple for a continuous stream.

The host drives `clk` and `rst_n`, so it can count cycles from reset to
stay phase-aligned. There is no separate start/valid signal (no spare
pins); after reset `a = b = z = 0`.

## How to test

The cocotb tests in `test/test.py` cover:

- reset behavior (`z = 0` after reset)
- corner cases (min/max operands, wraparound)
- 2000 randomized `(a, b, c)` triples against a Python reference
- back-to-back streaming (one result every 2 cycles)

Run with `make` from the `test/` directory (see the Tiny Tapeout test
workflow). A plain-Verilog self-checking testbench is also provided in
`test/tb_selfcheck.v` for quick iverilog runs without cocotb.

## External hardware

None.
