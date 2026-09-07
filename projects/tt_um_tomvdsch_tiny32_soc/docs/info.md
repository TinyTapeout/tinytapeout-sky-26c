# Tiny32 RV32IM SoC

## Features

- Multicycle RV32I CPU with iterative RV32M operations
- `Zicsr`, `Zifencei`, and Machine mode
- 8 MiB read-only memory-mapped SPI flash at `0x2000_0000`
- 8 MiB SPI/quad-I/O PSRAM at `0x8000_0000`
- One-word instruction buffer
- Replaceable software stage-1 loader with image bounds checks and CRC32
- Single-hart CLINT-compatible timer/software interrupts
- Compact 8-source, single-hart PLIC-compatible interrupt controller
- GPIO and pin multiplexing, UART, Timer 0, CLINT and PLIC

## Compile-time options

Optional peripherals are removed by synthesis when their parameter is zero.
The submitted configuration in `src/project.v` starts with all of these options
disabled:

| Parameter | Allowed values | Submitted value |
|---|---:|---:|
| `ENABLE_M` | 0 or 1 | 1 |
| `ENABLE_A` | 0 or 1 | 0 |
| `ENABLE_U` | 0 or 1 | 0 |
| `ENABLE_COUNTERS` | 0 or 1 | 0 |
| `ENABLE_SPI` | 0 or 1 | 0 |
| `ENABLE_I2C` | 0 or 1 | 0 |
| `ENABLE_TIMER1` | 0 or 1 | 0 |
| `ENABLE_WATCHDOG` | 0 or 1 | 0 |
| `PWM_CHANNELS` | 0 through 5 | 0 |
| `ICACHE_WORDS` | 1, 2 or 4 | 1 |

Changing these values requires a new synthesis and GDS build; software cannot
enable hardware that was compiled out.

## CPU architecture

The CPU is an in-order, non-pipelined, single-issue multicycle implementation.
Only one memory transaction is in flight. RV32M multiplication and division are
iterative to reduce area.

| Item | Implementation |
|---|---|
| XLEN | 32 bits |
| Base ISA | RV32I |
| Multiply/divide | RV32M, iterative |
| Atomics | Not implemented in the tapeout configuration |
| Privilege | Machine mode |
| CSRs | Machine trap/interrupt CSRs, `misa`, and `time` |
| Instruction coherency | `FENCE.I` invalidates the prefetch line |
| Reset vector | `0x2000_0000` |
| Pipeline/MMU/PMP | None |


## Boot and external memory

After reset, hardware initializes the PSRAM interface and then releases the CPU
at the SPI-flash reset vector. A small stage-1 program executes in place from
flash, validates the image header, copies the payload to PSRAM, verifies CRC32
and PSRAM readback, executes `FENCE.I`, and jumps to the payload entry point.

This keeps image policy in replaceable software rather than fixed boot gates.
It is suitable for a Zephyr payload and leaves room for a future specialized
no-MMU Linux loader without changing the RTL.

### Flash layout

| Flash offset | Contents |
|---:|---|
| `0x000000` | Stage-1 executable, maximum 64 KiB |
| `0x010000` | 32-byte version-2 image header |
| `0x010020` | Application payload |

The header contains eight little-endian 32-bit words:

| Header offset | Field | Meaning |
|---:|---|---|
| `0x00` | Magic | `0x32335454` (`TT32`) |
| `0x04` | Version | `2` |
| `0x08` | Load address | Address inside PSRAM |
| `0x0C` | Entry point | Four-byte aligned and inside the payload |
| `0x10` | Image size | Nonzero payload length in bytes |
| `0x14` | CRC32 | IEEE CRC32; zero disables the check |
| `0x18` | Payload offset | Normally `0x00010020` |
| `0x1C` | Flags | Reserved; zero |

Stage 1 uses the final 8 KiB of PSRAM (`0x807FE000..0x807FFFFF`) as temporary
stack space. The packager rejects payloads that overlap it. The application may
reclaim that memory after stage 1 transfers control.

### PSRAM wire protocol

The controller leaves APS6404L-class memory in SPI mode. It sends the `38h`
quad-write or `EBh` quad-read command serially on SD0, sends the 24-bit address
over all four data pins, inserts six dummy clocks for reads, and transfers data
four bits at a time. SCK idles high. Requests use a level
`req_valid`/`req_ready` handshake.

## Tiny Tapeout pinout

All external devices must use the Tiny Tapeout I/O voltage for the selected
shuttle. Do not apply 5 V to any chip or external memory signal.

| Pin | Function at reset | Alternate function |
|---|---|---|
| `ui[0]` | Flash MISO | — |
| `ui[1]` | GPIO input | — |
| `ui[2:6]` | GPIO inputs | — |
| `ui[7]` | UART RX | GPIO input |
| `uo[0]` | Flash CS# | — |
| `uo[1]` | Flash MOSI | — |
| `uo[2]` | Flash SCK | — |
| `uo[3]` | UART TX | GPIO |
| `uo[4]` | GPIO | — |
| `uo[5]` | GPIO | — |
| `uo[6]` | GPIO | — |
| `uo[7]` | GPIO | — |
| `uio[0]` | PSRAM CS# | — |
| `uio[1]` | PSRAM SCK | — |
| `uio[2]` | PSRAM SD0 | — |
| `uio[3]` | PSRAM SD1 | — |
| `uio[4]` | PSRAM SD2 | — |
| `uio[5]` | PSRAM SD3 | — |
| `uio[6]` | GPIO | — |
| `uio[7]` | GPIO | — |

The external flash requires CS#, MOSI, MISO, SCK, power, ground, local bypass
capacitance, and inactive WP#/HOLD# pins. The PSRAM requires CS#, SCK, SD0–SD3,
power, ground, and local bypass capacitance. Keep serial-memory wiring short.

## Clock and reset

`clk` is configured for 25 MHz. `rst_n` is active-low at the
module boundary. `ena` is guaranteed high while the design is selected and is
not used functionally. Every Tiny Tapeout output is driven by the SoC wrapper.
The CPU remains reset until PSRAM initialization completes.

## Address map

| Address range | Function |
|---|---|
| `0x0200_0000..0x0200_FFFF` | CLINT-compatible block |
| `0x0C00_0000..0x0C3F_FFFF` | PLIC-compatible block |
| `0x1000_0000..0x1000_0FFF` | System information |
| `0x1000_1000..0x1000_1FFF` | GPIO and pin mux |
| `0x1000_2000..0x1000_2FFF` | UART |
| `0x1000_3000..0x1000_3FFF` | Optional SPI master; zero when disabled |
| `0x1000_4000..0x1000_4FFF` | Optional I2C master; zero when disabled |
| `0x1000_5000..0x1000_5FFF` | Optional PWM; zero when disabled |
| `0x1000_6000..0x1000_60FF` | Timer 0 |
| `0x1000_6100..0x1000_61FF` | Optional Timer 1; zero when disabled |
| `0x1000_7000..0x1000_7FFF` | Optional watchdog; zero when disabled |
| `0x2000_0000..0x207F_FFFF` | 8 MiB read-only SPI flash window |
| `0x8000_0000..0x807F_FFFF` | 8 MiB read/write PSRAM |

Registers are 32-bit little-endian. Use aligned accesses unless stated.

## Register reference

### System information — `0x1000_0000`

| Offset | Name | Description |
|---:|---|---|
| `0x00` | ID | `0x53323354` |
| `0x04` | CLOCK_HZ | Implemented clock frequency |
| `0x08` | FEATURES | `0x00000011`: M enabled and one cache word |
| `0x0C` | BOOT_STATUS | Low byte writable by stage 1 |
| `0x10` | RESET_VECTOR | Normally `0x20000000` |
| `0x14` | RAM_BYTES | `0x00800000` |
| `0x18` | FLASH_BYTES | `0x00800000` |

Boot status values: `01` initializing PSRAM, `02` executing stage 1, `10`
copying, `20` checking source CRC, `30` checking PSRAM readback, `80` success,
and `E1..EF` error.

### CLINT — `0x0200_0000`

| Offset | Register |
|---:|---|
| `0x0000` | MSIP hart 0 |
| `0x4000` | MTIMECMP low |
| `0x4004` | MTIMECMP high |
| `0xBFF8` | MTIME low |
| `0xBFFC` | MTIME high |

### PLIC — `0x0C00_0000`

The block implements 8 priorities, pending bits, Machine-mode enables,
threshold, and claim/complete registers at standard PLIC offsets. Interrupt IDs
are: 1 UART, 2 optional SPI, 3 optional I2C, 4 GPIO, 5 Timer 0, 6 optional
Timer 1 and 7 optional watchdog; ID 8 is reserved. Disabled sources remain
inactive. Claimed level sources are held in service until completion.

### GPIO and pin mux — `0x1000_1000`

| Offset | Register |
|---:|---|
| `0x00` | UI_IN |
| `0x04` | UO_GPIO_OUT |
| `0x08` | UIO_IN |
| `0x0C` | UIO_GPIO_OUT |
| `0x10` | UIO_GPIO_OE |
| `0x14` | PINMUX_UO, two bits per `uo[3]..uo[7]` |
| `0x18` | PINMUX_UIO, I2C select for `uio[6:7]` |
| `0x20` | IRQ_RISE, `[7:0]=ui`, `[15:8]=uio` |
| `0x24` | IRQ_FALL |
| `0x28` | IRQ_PENDING, write one to clear |

Pin-mux value 0 selects GPIO. Value 1 selects UART on `uo[3]`. Optional SPI and
PWM selections only operate when those blocks are enabled before synthesis.
UART TX is selected on `uo[3]` after reset for an early console.

### UART — `0x1000_2000`

| Offset | Register | Description |
|---:|---|---|
| `0x00` | DATA | Write TX; read RX and clear valid |
| `0x04` | STATUS | bit 0 TX-ready, bit 1 RX-valid, bit 2 overrun |
| `0x08` | CTRL | bit 0 RX IRQ, bit 1 TX-ready IRQ, write bit 2 to clear overrun |
| `0x0C` | DIV | System clocks per serial bit |

The UART is 8-N-1 and has one byte of RX storage.

### SPI — `0x1000_3000`

This block is disabled in the submitted configuration. Enable `ENABLE_SPI`
before synthesis to include it.

| Offset | Register | Description |
|---:|---|---|
| `0x00` | DATA | Start transfer / read received byte |
| `0x04` | STATUS | bit 0 ready, bit 1 done |
| `0x08` | CTRL | CPOL, CPHA, LSB-first, IRQ enable; bit 7 clears done |
| `0x0C` | DIV | SCK half-period in clocks |
| `0x10` | CS | bit 0 controls CS# assertion |

### I2C — `0x1000_4000`

This block is disabled in the submitted configuration. Enable `ENABLE_I2C`
before synthesis to include it.

| Offset | Register | Description |
|---:|---|---|
| `0x00` | PRESCALE | SCL timing |
| `0x04` | CTRL | enable and IRQ enable |
| `0x08` | TXRX | transmit / receive byte |
| `0x0C` | CMD_STATUS | START, STOP, READ, WRITE, ACK and status bits |

SCL and SDA are open-drain and require external pull-ups. Clock stretching is
observed on SCL.

### PWM — `0x1000_5000`

This block is disabled in the submitted configuration. Set `PWM_CHANNELS` from
1 through 5 before synthesis to include the requested number of channels.

| Offset | Register |
|---:|---|
| `0x00` | Common 16-bit PERIOD |
| `0x04` | Global enable bit 0 and channel enables bits 5:1 |
| `0x10..0x20` | DUTY0..DUTY4 |

### Timers — `0x1000_6000`, `0x1000_6100`

Timer 0 is always included. Timer 1 is disabled in the submitted configuration
and is controlled by `ENABLE_TIMER1`.

| Offset | Register | Description |
|---:|---|---|
| `0x00` | LOAD | Reload value |
| `0x04` | VALUE | Current counter |
| `0x08` | CTRL | enable, periodic, IRQ enable |
| `0x0C` | STATUS | pending; write one to clear |

### Watchdog — `0x1000_7000`

This block is disabled in the submitted configuration. Enable
`ENABLE_WATCHDOG` before synthesis to include it.

| Offset | Register | Description |
|---:|---|---|
| `0x00` | RELOAD | Reload value |
| `0x04` | VALUE | Current counter |
| `0x08` | CTRL | enable, IRQ enable, reset enable |
| `0x0C` | FEED | Write `0x51F15EED` |
| `0x10` | STATUS | expired |
