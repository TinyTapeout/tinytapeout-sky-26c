<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS)
and the Department of Electronics and Communication Engineering (ECE) for providing the necessary
resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD - ECE), Dr. K R Usha Rani (Associate Dean - PG),
Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant
encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

## How it works

This is a **crypto-agile Number Theoretic Transform (NTT) butterfly unit** that supports the
moduli of all three NIST post-quantum cryptography standards from a single shared datapath:

| `SCHEME` | Standard | Scheme | q | k (loop iterations) |
|---|---|---|---|---|
| `00` | FIPS 203 | ML-KEM (Kyber) | 3329 | 12 |
| `01` | FIPS 206 | FN-DSA (Falcon) | 12289 | 14 |
| `1x` | FIPS 204 | ML-DSA (Dilithium) | 8380417 | 23 |

The unit computes one Cooley–Tukey butterfly:

```
t = b · w · 2^-k  mod q      (Montgomery product)
u = (a + t)       mod q
v = (a - t)       mod q
```

### Why this fits in one tile

The usual way to build a multi-scheme NTT unit is to instantiate a parallel multiplier plus a
separate reducer per scheme (Barrett, Plantard, or a Solinas-style shift-add chain for each q)
and mux between them. That does not fit in a 1×1 tile.

Instead this design uses a **radix-2 bit-serial Montgomery multiplier**. Montgomery reduction is
valid for *any odd modulus*, so scheme agility costs only:

* a constant mux selecting `q`, and
* a different terminal value for the iteration counter.

There is no per-scheme reduction hardware at all. Each iteration is

```
m   = S[0] ^ (w[i] & b[0])          // q is odd, so q[0] = 1
S  <- (S + w[i]·b + m·q) >> 1
```

with the loop invariant `S < 2q` (verified exhaustively in the golden model), so the accumulator
is 24 bits and the three-operand sum is 25 bits.

### One adder for everything

A single 25-bit three-operand adder is time-shared across the whole computation through input
muxes. The FSM walks through:

| State | `opX` | `opY` | `opZ` | Result |
|---|---|---|---|---|
| `MUL` (k×) | S | `w[i] ? b : 0` | `m ? q : 0` | `S <- sum >> 1` |
| `RED` | S | `~q` | 1 | `t = S - q` if no borrow |
| `SUB1` | a | `~t` | 1 | `v <- a - t`, latch borrow |
| `SUB2` | v | `borrow ? q : 0` | 0 | `v` corrected |
| `ADD1` | a | t | 0 | `u <- a + t` |
| `ADD2` | u | `~q` | 1 | `u = u - q` if no borrow |

Loading and unloading also share hardware: the operand registers form one byte shift chain
`DIN -> w -> b -> a -> DOUT`, and because the unload path happens to need the identical
inter-register connections as the load path, they cost one set of muxes between them.

Latency is **k + 5 cycles**: 17 for ML-KEM, 19 for FN-DSA, 28 for ML-DSA. Smaller-modulus
schemes are genuinely faster, since the loop length tracks the modulus.

## How to test

`w` must be supplied in the **Montgomery domain**, i.e. load `w · 2^k mod q` rather than `w`.
This is standard for Montgomery-based NTT implementations, where twiddle tables are stored
pre-scaled. `test/golden_model.py` provides `to_mont(w, q, k)`.

All values are 24 bits, sent most-significant byte first.

1. Reset with `rst_n` low for a few cycles.
2. Drive `SCHEME` on `uio[4:3]` and hold it for the whole transaction.
3. **Load 9 bytes.** For each byte: put it on `ui_in`, raise `SHIFT` (`uio[0]`), clock once.
   Order is `a[23:16] a[15:8] a[7:0] b[23:16] b[15:8] b[7:0] wm[23:16] wm[15:8] wm[7:0]`.
4. **Start.** Lower `SHIFT`, raise `START` (`uio[1]`), clock once, lower `START`.
5. **Wait** for `DONE` (`uio[5]`) to go high. `BUSY` (`uio[6]`) is high while computing.
6. **Unload 6 bytes.** Read `uo_out`, then pulse `SHIFT` and read again, five times. The stream
   is `u[23:16] u[15:8] u[7:0] v[23:16] v[15:8] v[7:0]`.

`SCHEME` may be changed freely between transactions with no reset in between — this is
exercised directly by `test_scheme_switch_without_reset`.

### Worked example (ML-KEM, q = 3329)

```
a = 2384,  b = 2534,  w = 710
wm = 710 · 2^12 mod 3329 = 1943
->  t = 1480,  u = 535,  v = 904
```

## External hardware

None. The design is driven entirely over the dedicated and bidirectional TT pins; a Raspberry Pi
Pico running the standard `tt-micropython-firmware`, or the TT commander UI, is sufficient.

