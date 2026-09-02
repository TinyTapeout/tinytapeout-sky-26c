# 17-bit Wallace-Tree POPCNT with Parallel/Serial Input Loading

## Overview

This Tiny Tapeout project implements a 17-bit population counter (POPCNT)
using a Wallace-tree compressor architecture.

The arithmetic core accepts 17 independent logical input bits and produces
a 5-bit binary output equal to the number of asserted input bits.

Because the Tiny Tapeout interface provides 16 physical input-capable data
pins, the design uses a two-cycle input-loading scheme to provide independent
control of all 17 logical POPCNT inputs.

## Architecture

The design contains:

- a 17-bit input register,
- a four-state control FSM,
- a combinational 17-bit Wallace-tree POPCNT core,
- a 5-bit registered result.

The Wallace-tree core explicitly contains:

- 12 `sky130_fd_sc_hd__fa_1` full adders,
- 3 `sky130_fd_sc_hd__ha_1` half adders.

The 15 arithmetic cells are marked with synthesis keep attributes.

## Input Protocol

### Cycle 1 - Parallel Load

Sixteen input bits are captured simultaneously:

- `ui_in[7:0]` -> `i0-i7`
- `uio_in[7:0]` -> `i8-i15`

These values are stored in `data_reg[15:0]`.

### Cycle 2 - Serial Load

`ui_in[0]` is reused to capture the seventeenth logical input:

- `ui_in[0]` -> `i16`

The original value of `i0` is not affected because it was already stored
in `data_reg[0]` during the parallel-load cycle.

Therefore all 17 logical POPCNT inputs remain independently controllable.

### Cycle 3 - Result Capture

The stored 17-bit word is evaluated by the Wallace-tree POPCNT.

The resulting population count is captured into the 5-bit result register.

The result appears on:

- `uo_out[0]` = P0
- `uo_out[1]` = P1
- `uo_out[2]` = P2
- `uo_out[3]` = P3
- `uo_out[4]` = P4

`uo_out[7:5]` are driven low.

## FSM

Following reset, the controller progresses through:

1. `LOAD_PARALLEL`
2. `LOAD_SERIAL`
3. `CAPTURE`
4. `HOLD`

The output remains valid in `HOLD` until reset starts a new transaction.

## Clock Target

The target clock frequency is 300 MHz.

The physical-design clock constraint is:

    3.333 ns

The RTL Cocotb simulation uses:

    3334 ps

The 1 ps difference allows the simulation clock to be represented cleanly
by the simulator.

RTL simulation verifies functional behavior. The achievable physical clock
frequency must be determined from post-route static timing analysis.

## Exhaustive Functional Verification

The complete logical 17-bit input space has been tested.

Number of possible input combinations:

    2^17 = 131072

Equivalently:

    65536 parallel input patterns x 2 serial-bit values = 131072

For each combination, the hardware output is compared against the expected
software population count.

RTL result:

    131072 / 131072 combinations passed

## Tiny Tapeout Interface

### Parallel Inputs

- `ui_in[7:0]` = D0-D7
- `uio_in[7:0]` = D8-D15

### Serial Input

During the serial-load cycle:

- `ui_in[0]` = D16

### Outputs

- `uo_out[4:0]` = 5-bit population count
- `uo_out[7:5]` = 0

The bidirectional Tiny Tapeout pins are configured as inputs by driving
`uio_oe` low.

## Physical Verification

Final timing, area, power, DRC, LVS, routing, and post-layout cell-count
results are determined from the ASIC implementation flow.
