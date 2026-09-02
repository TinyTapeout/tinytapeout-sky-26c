# RSA Simple Encryptor

## How it works

This project implements textbook RSA encryption in hardware. It computes:

```
ciphertext = message^e mod n
```

with hardcoded public key **e = 5**, **n = 221** (= 13 x 17).

The core algorithm is **square-and-multiply modular exponentiation** (`modexp.v`).
To fit within a TinyTapeout 1x1 sky130 tile, the datapath is **8-bit** and the
internal multiplier uses a **shift-and-add** approach (`modmul` submodule) that
takes 8 clock cycles per multiply instead of synthesizing a full 8x8
combinational multiplier. Each encryption takes at most
**8 (multiplies/exp bit) x 8 (bits in exponent) x 8 (cycles/multiply) ~ 512**
clock cycles worst-case.

> This is a **textbook** RSA implementation for educational/demonstration use
> only. The key size (8-bit n) is trivially breakable and offers no real security.

---

## Pinout

| Pin | Direction | Description |
|-----|-----------|-------------|
| `ui[7:0]` | Input | `message[7:0]` - plaintext, must be < 221 |
| `uio[0]` | Input | **start** - pulse high for 1 clock cycle to begin encryption |
| `uio[1]` | Output | **done** - pulses high for 1 cycle when ciphertext is ready |
| `uo[7:0]` | Output | `encrypted[7:0]` - ciphertext (valid when done=1) |

> Note: `uio[1]` is the only `uio` pin driven as an output (`uio_oe = 0x02`);
> the rest are unused inputs.

---

## Usage

1. Set `ui_in[7:0]` to the plaintext message (0-220).
2. Pulse `uio_in[0]` (start) high for exactly **1 clock cycle**.
3. Keep `ui_in[7:0]` stable until `done` goes high.
4. When `uio_out[1]` (done) pulses high, read the ciphertext from `uo_out[7:0]`.

### Example (Python / cocotb)

```python
# message = 42
dut.ui_in.value  = 42

# Pulse start
dut.uio_in.value = 0x01
await ClockCycles(dut.clk, 1)
dut.uio_in.value = 0x00        # clear start

# Wait for done
while not ((int(dut.uio_out.value) >> 1) & 1):
    await RisingEdge(dut.clk)

# Read result
ct = int(dut.uo_out.value)
# Verify: pow(42, 5, 221) == ct
```

---

## Clock

Designed and verified at **10 MHz**. Higher frequencies may work but have not
been characterized. The only combinational paths are adders and comparators
(no multipliers), so timing should be comfortable.

---

## Resource estimate

| Resource | Estimate |
|----------|----------|
| Tile size | 1x1 |
| Key registers | ~80 flip-flops |
| Critical path | 8-bit adder + comparator (~5 gate delays) |
| Cycles per encryption | ~512 worst case at 8 exponent bits |
| Time per encryption @ 10 MHz | ~51 us |
