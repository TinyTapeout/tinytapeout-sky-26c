# CTW-SPMS — Programmable Smart Power Management & Supervisor

CTW-SPMS is a 100% digital SKY130 power supervisor for Tiny Tapeout TTSKY26c.
It filters an externally digitized power metric, classifies available power,
sequences four supervised rails, controls three priority loads, and shuts every
output down through an explicit fail-safe override after a critical fault.

## User interface

The fixed Tiny Tapeout pins provide PG1..PG4, OVERCURRENT, OVERTEMP,
WATCHDOG_IN, external force shutdown, four rail enables, three load enables,
FAULT, and a four-wire SPI interface. Only `uio[0]` is driven, as SPI_MISO;
`uio_oe` is always `8'h01`.

SPI is Mode 0, MSB first, at up to 2 MHz. Each frame contains a read/write plus
7-bit address byte and one data byte. SPI is synchronized into the 10 MHz core
domain; SPI_SCLK is not used as an RTL clock.

See the repository README for architecture, sequencing, safety and retry
semantics. See `docs/register-map.md` for the authoritative address table,
defaults, status flags, fault codes, state codes, and zero-value behavior.

## Safety summary

Reset, a hard fault, force shutdown, or inactive synchronized Tiny Tapeout
`ena` makes all final rail/load enables zero. FAULT_LOCK additionally guarantees
FAULT=1. All asynchronous single-bit inputs pass through explicit 2-flip-flop
synchronizers. PG assertion and deassertion both require consecutive sampled
100 us ticks, so short glitches in either direction do not change qualified PG.

The design contains no generated/gated clock, functional initial block,
delay statement, multiplier, variable divider, inferred memory, CPU, analog
block, UART, I2C, PMBus, or PWM.
