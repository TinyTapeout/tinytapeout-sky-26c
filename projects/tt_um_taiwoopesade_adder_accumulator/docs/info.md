## How it works

This is a 4-bit accumulator register. On every clock edge it does one of three
things, in priority order:

1. **Clear** - if `CLR` (ui[5]) is high, the accumulator is reset to `0000`,
   regardless of anything else.
2. **Load** - if `MODE` (ui[4]) is high, the accumulator is overwritten with
   whatever is on `DATA_IN` (ui[3:0]).
3. **Add** - otherwise, the accumulator becomes `ACC + DATA_IN`, wrapping
   around modulo 16 if it overflows.

Two flags are also registered alongside the accumulator each cycle:

- `ZERO` (uo[5]) - set whenever the accumulator's current value is `0000`.
- `CARRY_OUT` (uo[4]) - set when the most recent **add** overflowed past 4
  bits. It's cleared again on the next cycle unless that add also
  overflows, and it's forced to 0 on a load or clear (since neither of
  those is an addition).

The whole design is built by wiring together the same primitive logic-gate
cells you'd find in a schematic tool's gate library - AND, OR, XOR, NOT, a
2-to-1 MUX, and a D flip-flop with an asynchronous active-high reset. There's
no `+`, `*` or `?:` anywhere in the design: the 4-bit adder is four
full-adder bits built from AND/XOR/OR gates and chained by their carry
signals, and every multiplexing decision (add vs. load vs. clear) is done
with 2-to-1 MUX gates feeding a D flip-flop per bit.

## How to test

Drive `ui_in[3:0]` with a 4-bit value, set `ui_in[4]` (MODE) and `ui_in[5]`
(CLR) as described above, and watch `uo_out[3:0]` (ACC), `uo_out[4]`
(CARRY_OUT) and `uo_out[5]` (ZERO) update on the next clock edge. `rst_n` is
active low and asynchronously clears the accumulator and both flags
immediately, without waiting for a clock edge.

Example sequence (MODE=0, CLR=0 unless noted):

| Cycle | DATA_IN | MODE | CLR | ACC (after) | CARRY_OUT | ZERO |
|---|---|---|---|---|---|---|
| reset | - | - | - | 0000 | 0 | 1 |
| 1 | 5 | 0 | 0 | 0101 (5) | 0 | 0 |
| 2 | 3 | 0 | 0 | 1000 (8) | 0 | 0 |
| 3 | 10 | 0 | 0 | 0010 (2, wrapped from 18) | 1 | 0 |
| 4 | 9 | 1 | 0 | 1001 (9, loaded) | 0 | 0 |
| 5 | - | - | 1 | 0000 | 0 | 1 |

## External hardware

None - this design only uses the standard Tiny Tapeout input/output pins.
