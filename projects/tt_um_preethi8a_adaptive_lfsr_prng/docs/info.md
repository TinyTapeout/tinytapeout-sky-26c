## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

# Self-Seeding Adaptive 16-bit Galois LFSR PRNG

## How it works

This project implements a compact 16-bit Galois Linear Feedback Shift Register (LFSR) based pseudo-random number generator.

The design uses three internally selectable polynomial configurations. It starts with polynomial P0 and generates an 8-bit pseudo-random output from the lower 8 bits of the 16-bit LFSR state.

The PRNG includes deterministic self-seeding using an external 7-bit seed input. The generated 16-bit seed is protected against the all-zero state.

An 8-bit repetition monitor observes consecutive PRNG outputs. When a repetition event is detected, the adaptive controller switches the polynomial in the sequence:

P0 → P1 → P2 → P0

At the same time, the controller generates a deterministic new seed from the current LFSR state. A 3-cycle cooldown period prevents immediate repeated adaptive events after polynomial switching and reseeding.

The main blocks are:

- 16-bit Galois LFSR
- Deterministic seed generator
- 8-bit repetition monitor
- Adaptive polynomial controller
- Cooldown control
- 8-bit pseudo-random output

The PRNG is enabled using `ui_in[7]`. The external seed is supplied through `ui_in[6:0]`.

## How to test

1. Apply reset by driving `rst_n` low.
2. Release reset by driving `rst_n` high.
3. Set `ena` high.
4. Provide a non-zero 7-bit seed through `ui_in[6:0]`.
5. Set `ui_in[7]` high to enable the PRNG.
6. Observe the pseudo-random sequence on `uo_out[7:0]`.
7. Verify that successive outputs are generated from the 16-bit LFSR state.
8. Continue the simulation for multiple clock cycles and verify that the output does not remain constant.
9. Monitor the polynomial status and adaptive event internally during simulation if required.
10. Verify that an adaptive event causes polynomial switching and deterministic reseeding.
11. Verify that the cooldown period prevents immediate subsequent adaptive events.

The Cocotb testbench in `test/test.py` performs the basic functional verification of the PRNG, including reset, seeding, LFSR operation, output generation, and re-enabling behavior.

