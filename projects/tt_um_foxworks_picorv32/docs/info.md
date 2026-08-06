## How it works

A small RISC-V microcontroller: a PicoRV32 core (RV32I) that executes
in place from an external SPI flash, with 128 bytes of on-chip SRAM for
stack and data, a UART, and an 8-in/8-out GPIO port. There is no on-chip
program memory — every instruction is fetched over SPI as it runs, so
the design fits in a small area at the cost of speed.

Memory map: SRAM at 0x0000_0000; flash execute-in-place window from
0x80 (reset vector 0x400); UART at 0x0200_0004/8; GPIO at 0x0300_0000.

Timing closed at 50MHz, however testing conducted at 25MHz clock with SPI-flash at clk/2.

## How to test

Attach an SPI flash (or an RP2040 emulating one) holding a RISC-V
program binary compiled according to the rulesets defined in the `fw` directory, hold rst_n low while it powers up, raise ena, then release
rst_n. The chip boots and runs. A UART console at 115200 8N1 reports
what it's doing; the sample firmware either:
- BOUNCE: prints a banner and bounces a lit
bit across the 8 output pins, with speed set by the input pins.
- SELFTEST: runs a system diagnostic and outputs the results over UART. retrigerrable by writing a `'?'` to the UART.

## External hardware

An SPI flash on uio[3:0], or an RP2040 running the Tiny Tapeout
spi-ram-emu firmware to emulate one. A USB-serial adapter on the UART
pins (uio[6]/uio[7]) for the console. Optionally switches on the input
PMOD and LEDs on the output PMOD.

## Pinout

| Pin     | Function                          |
|---------|-----------------------------------|
| ui[7:0] | GPIO in (readable at 0x0300_0000) |
| uo[7:0] | GPIO out                          |
| uio[0]  | FLASH_SCK (out)                   |
| uio[1]  | FLASH_CSB (out)                   |
| uio[2]  | FLASH_IO0 / MOSI (bidir)          |
| uio[3]  | FLASH_IO1 / MISO (bidir)          |
| uio[4]  | FLASH_IO2 (driven 1 = /WP)        |
| uio[5]  | FLASH_IO3 (driven 1 = /HOLD)      |
| uio[6]  | SERIAL_TX (115200)                |
| uio[7]  | SERIAL_RX                         |