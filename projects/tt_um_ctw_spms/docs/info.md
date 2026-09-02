# CTW-SPMS — Programmable Smart Power Management & Supervisor

CTW-SPMS is an all-digital power-management and supervision controller
implemented in synthesizable RTL for Tiny Tapeout TTSKY26c / SKY130.

## Current implementation: Milestone 0.1

The full architecture is frozen, but Milestone 0.1 implements only the real
clocked ASIC foundation needed for safe incremental development.

The 10 MHz Tiny Tapeout `clk` is the only clock domain. `timebase_tick` divides
its event rate by 1000 and emits a one-core-cycle clock enable at 10 kHz, so one
timer tick represents 100 us. It does not create a divided clock.

Every asynchronous project control input is synchronized with a reusable
2-flip-flop synchronizer before functional use:

- PG1, PG2, PG3, PG4
- OVERCURRENT
- OVERTEMP
- WATCHDOG_IN
- FORCE_SHUTDOWN_EXT
- `ena`

Synchronized OVERCURRENT and OVERTEMP form the only hard-fault event sources in
this milestone. Either source sets a sequential FAULT latch; only reset clears it.
FORCE_SHUTDOWN_EXT is deliberately separate from the hard-fault code path.

Synchronized PG inputs, retained watchdog-transition status, synchronized
FORCE_SHUTDOWN_EXT, synchronized `ena`, and `timer_tick_ce` feed an internal
foundation-readiness state. This creates a functional foundation for later
supervision logic without enabling any power output.

## Safety behavior

After reset:

- RAIL1_EN = 0
- RAIL2_EN = 0
- RAIL3_EN = 0
- RAIL4_EN = 0
- LOAD1_EN = 0
- LOAD2_EN = 0
- LOAD3_EN = 0
- FAULT = 0

After synchronized OVERCURRENT or OVERTEMP, FAULT latches HIGH while all rail
and load outputs remain OFF.

## Pin mapping

### Dedicated inputs

| Pin | Function |
|---|---|
| ui[0] | PG1 |
| ui[1] | PG2 |
| ui[2] | PG3 |
| ui[3] | PG4 |
| ui[4] | OVERCURRENT |
| ui[5] | OVERTEMP |
| ui[6] | WATCHDOG_IN |
| ui[7] | FORCE_SHUTDOWN_EXT |

### Dedicated outputs

| Pin | Function |
|---|---|
| uo[0] | RAIL1_EN (always OFF in M0.1) |
| uo[1] | RAIL2_EN (always OFF in M0.1) |
| uo[2] | RAIL3_EN (always OFF in M0.1) |
| uo[3] | RAIL4_EN (always OFF in M0.1) |
| uo[4] | LOAD1_EN (always OFF in M0.1) |
| uo[5] | LOAD2_EN (always OFF in M0.1) |
| uo[6] | LOAD3_EN (always OFF in M0.1) |
| uo[7] | FAULT |

### Bidirectional interface

| Pin | Function |
|---|---|
| uio[0] | SPI_MISO reserved |
| uio[1] | SPI_CS_N reserved |
| uio[2] | SPI_SCLK reserved |
| uio[3] | SPI_MOSI reserved |
| uio[4..7] | unused |

SPI is not implemented in Milestone 0.1. `uio_oe` is always zero. The internal
MISO data path (`uio_out[0]`) is deterministic and carries foundation readiness,
or the 10 kHz tick pulse while readiness is low, solely as a future-compatible
status/verification path.

## How to test

The self-checking Cocotb regression covers:

1. reset drives `uo_out == 0`
2. no-fault operation keeps FAULT low
3. synchronized OVERTEMP sets FAULT
4. synchronized OVERCURRENT sets FAULT
5. removing a hard-fault input does not clear the latch
6. reset clears the latch
7. rail/load outputs always remain OFF
8. `uio_out` and `uio_oe` are deterministic and `uio_oe == 0`
9. timebase pulses exactly one clock and repeats every 1000 core clocks
10. PG/watchdog/FORCE_SHUTDOWN_EXT exercise the readiness path
11. FORCE_SHUTDOWN_EXT does not set FAULT

FIR, SPI protocol/registers, rail sequencing, load management, full watchdog,
auto-retry and diagnostic registers are intentionally deferred.
