## How it works

This design is an 8-bit, 16-word dual-port RAM with arbitration and write-collision detection, sized to fit a single Tiny Tapeout tile (1×1).

The Tiny Tapeout top module (`tt_um_vedam_dual_port_ram`) connects the chip's 24 user pins to the internal `dual_port_ram_top` core using a shared multiplexed bus:

- `PORT_SEL` (`ui[0]`) selects Port A (0) or Port B (1)
- `ALE_N`, `RD_N`, `WR_N`, `CS_N` control address latch, read, write, and chip select (active low)
- `AD0`–`AD7` (`uio[0:7]`) carry address and data on the same 8-bit bus
- `COLLISION`, `GRANT_A`, `GRANT_B` (`uo[0:2]`) report arbitration status

**Write sequence (per port):**
1. Assert `CS_N` low, `ALE_N` low, drive address on `AD[7:0]`
2. Deassert `ALE_N`, assert `WR_N` low, drive data on `AD[7:0]`
3. Deassert `WR_N` and `CS_N`

**Read sequence (per port):**
1. Assert `CS_N` low, `ALE_N` low, drive address on `AD[7:0]`
2. Deassert `ALE_N`, assert `RD_N` low
3. Read data from `AD[7:0]` (bus driven by the RAM)
4. Deassert `RD_N` and `CS_N`

Both ports share one memory array. Writing the same address from both ports at the same time raises `COLLISION`.

## How to test

Run the Cocotb tests locally:

```bash
cd test
pip install -r requirements.txt
make clean
make
```

The tests verify Port A write/read, Port B write/read, independent access at different addresses, and idle status.

On silicon (demo board), drive the pins above using the pinout in `info.yaml` at 50 MHz.

## External hardware

None required. The design is tested through the Tiny Tapeout multiplexer pins (`ui`, `uo`, `uio`).
