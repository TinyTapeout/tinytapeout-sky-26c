## How it works

NanoV is a compact bit-serial RV32E RISC-V processor. It executes the retained
base-integer operations over multiple clock cycles to reduce hardware area. The
one-tile derivative keeps 16 architectural registers, the base ALU and shifter,
branches and jumps, external SPI instruction/data memory, and minimal GPIO.

To target a `1x1` Tiny Tapeout footprint, this derivative removes two optional
features from synthesis:

- the multiply unit, because multiplication is outside base RV32E;
- the UART receiver/transmitter peripheral.

The memory-mapped peripherals are:

| Address | Operation |
| --- | --- |
| `0x10000000` | Read or write the eight dedicated GPIO outputs |
| `0x10000004` | Read the eight dedicated GPIO inputs |

Instructions and data reside in external SPI RAM. The SPI interface uses `uio0`
for MOSI, `uio1` for chip select, `uio2` for clock, `uio3` for MISO, and `uio7`
for hold. The design does not include caches or on-chip program RAM.

Important inherited NanoV behavior:

- `x3/gp` is fixed at `0x00001000`.
- `x4/tp` is fixed at `0x10000000`.
- traps, interrupts, `ecall`, and `ebreak` are not implemented.

This is therefore a bare-metal RV32E processor, not a Linux-capable SoC.

## How to test

From the repository root:

```sh
python3 -m venv .venv
. .venv/bin/activate
pip install -r test/requirements.txt
python scripts/verify_one_tile_contract.py
cd test
python make_test_mem.py test.mem
make clean
make
! grep failure results.xml
```

The 97-word self-checking program exercises representative RV32E register ALU,
immediate ALU, shifts, signed and unsigned comparisons, all branch conditions,
`JAL`, `JALR`, SPI-memory load/store, and GPIO input. It writes `0x01` after
boot, `0xA5` on success, or `0xEE` on the first failed comparison.

## External hardware

- An SPI RAM compatible with command `0x03` reads and `0x02` writes, or a
  microcontroller emulating that interface
- Optional LEDs or a seven-segment display on `uo[7:0]`
- A 12 MHz Tiny Tapeout clock

## Attribution

The CPU and original Tiny Tapeout wrapper are by Michael Bell and are licensed
under Apache-2.0. Exact pinned revisions and derivative changes are recorded in
`UPSTREAM.md`. Retained but unsynthesized UART sources preserve their original
MIT license notices.
