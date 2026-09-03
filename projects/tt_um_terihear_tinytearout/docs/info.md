<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

1. This is a device to serially multiply and accumulate. But the "serially" applies only to multiplying, and not to accumulating.

2. The numbers are encoded 2's complement. The fractional coefficient is an 8-bit 2’s complement fixed-point value in Q0.7 format, with a range of -127/128 to +127/128, hence |coefficient| < 1. We aim to approach an expected delay around 8 clock cycles from operands valid to rounded product emission. We synchronize the input of the  multiplicand and coefficient from the 8-bit dedicated input and the input-enabled 8-bit bidirectional port enabled for input.

3. Although the product should not overflow 16 bits, intermediate accumulation requires guard bits. We use a 24-bit signed accumulator, not the most parsimonious.

4. At the 6th accumulation cycle, the lower 6 bits of the accumulator contain the fractional residue. We apply round-half-up by adding 1 to the cumulant. We then complete the multiplication by subtracting the multiplicand from the cumulant if the coefficient is negative. The product is output to the dedicated output with a data available signal at the output-enabled birectional port.


ASCII block schematic:

                        ┌─────────────────────────────────────────────┐
                        │           SERIAL MULTIPLY AND ACCUMULATE    │
                        │                                             │
  clk ─────────────────►│  ┌──────────┐                               │
  rst_n ───────────────►│  │ Control  │                               │
  ena ─────────────────►│  │ FSM      │                               │
                        │  └────┬─────┘                               │
                        │       │                                     │
 uio_in[7:0] ──────────►│  ┌────▼─────┐    ┌──────────────────────┐   │
  ui_in[7:0] ──────────►│  │ Input    │    │                      │   │
                        │  │          ├───►│ 8-bit Coeff Latch    │   │
                        │  │ (2×8→16) │    │ (Q0.7 signed)        │   │
                        │  └────┬─────┘    └──────────┬───────────┘   │
                        │       │                     │               │
                        │       │ 16-bit M'cand       │ coeff_bit     │
                        │  ┌────▼─────────────────────▼───────────┐   │
                        │  │     Bit-Serial Multiply Engine       │   │
                        │  │  ┌─────────┐  ┌──────────────────┐   │   │
                        │  │  │ Sign    │  │ 24-bit Signed    │   │   │
                        │  │  │ Extend  ├──► Accumulator      │   │   │
                        │  │  │ + Sub   │  │ (carry-save opt) │   │   │
                        │  │  └─────────┘  └────────┬─────────┘   │   │
                        │  └────────────────────────┼─────────────┘   │
                        │                           │ 24-bit          │
                        │                    ┌──────▼──────┐          │
                        │                    │ Round Unit  │          │
                        │                    │ (half-up)   │          │
                        │                    └──────┬──────┘          │
                        │                           │                 │
                        │                    ┌──────▼──────┐          │
                        │                    │ Output      │          │
                        │                    │             ├─────────► uo_out[7:0]
                        │                    │ (16→2×8)    ├─────────► uio_oe[7:0]
                        │                    └─────────────┘          │
                        │                                             │
                        └─────────────────────────────────────────────┘


## How to test

We characterize the latency as clock cycles from operands valid to rounded product emission.

We test for arithmetic correctness with the "golden model" for
*   boundary values of the coefficient
*   rounding half-up
*   overflow does not occur

