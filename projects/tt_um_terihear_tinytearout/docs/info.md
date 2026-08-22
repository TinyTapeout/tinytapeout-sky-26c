<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

1. This is a 2’s complement bit-serial multiplier with a fractional coefficient. The coefficient is an 8-bit 2’s complement fixed-point value in Q0.7 format (range: -1 to +127/128) with
|coefficient| < 1. We attain a total delay of 16 clock cycles from operands valid to rounded product emission. We use a simple 3-state FSM for the synchronous serializing of the multiplicand and coefficient from the 8-bit dedicated input.

2. Although the product will fit within 16 bits before rounding, intermediate accumulation requires guard bits. We use a 24-bit signed accumulator (16 integer + 7 fractional + 1 sign extension) to prevent overflow during accumulation.

3. In the LSB-first bit-serial multiplication, when we reach the MSB of the multiplier (coefficient), that bit has negative weight. Instead of adding multiplicand << 7, we subtract it. This is the standard Baugh-Wooley adaptation for bit-serial. During all other cycles, partial products are sign-extended to the accumulator width implicitly by using signed arithmetic.

4. Rounding after 8 accumulation cycles, the lower 7 bits of the accumulator contain the fractional residue. We apply round-half-up: if acc[6] == 1, add 1 to acc[7] before extracting the integer result. This adds 1 cycle of latency.

5. To achieve the delay of 16 clock cycles, the 8-bit coefficient is loaded in parallel with the first 8 bits of the multiplicand. Cycles 9–15 are "idle" accumulation cycles where the coefficient is fully latched and no new multiplicand bits arrive (the remaining 8 multiplicand bits are zero-padded conceptually, but since the coefficient is only 8 bits, accumulation completes at cycle 8). Cycles 9–15 serve as pipeline alignment delay so the total multiplicand-to-product latency equals 16. Cycle 16 performs rounding and output.

6. SERDES input/output are 8-bit wide buses clocked at the same rate. Input SERDES deserializes two consecutive 8-bit words into the 16-bit multiplicand (LSB word first). Output SERDES serializes the 16-bit result into two 8-bit words (LSB word first). 

ASCII block schematic:

                        ┌─────────────────────────────────────────────┐
                        │           PIPELINED BIT-SERIAL MULTIPLIER   │
                        │                                             │
  clk ─────────────────►│  ┌──────────┐                               │
  rst_n ───────────────►│  │ Control  │◄── enable                     │
  ena ─────────────────►│  │ FSM      │                               │
                        │  └────┬─────┘                               │
                        │       │                                     │
   in[7:0] ────────────►│  ┌────▼─────┐    ┌──────────────────────┐   │
                        │  │ Input    │    │                      │   │
                        │  │ SERDES   ├───►│ 8-bit Coeff Latch    │   │
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
                        │                           │ 16-bit          │
                        │                    ┌──────▼──────┐          │
                        │                    │ Output      │          │
                        │                    │ SERDES      ├─────────► out[7:0]
                        │                    │ (16→2×8)    │          │
                        │                    └─────────────┘          │
                        │                                             │
                        └─────────────────────────────────────────────┘


## How to test

We test for arithmetic correctness with the "golden model" for
*   boundary values of the coefficient
*   rounding half-up
We try falsifying the claims of
*   overflow does not occur
*   16 clock cycles from multiplicand-Hi valid to product LSB

