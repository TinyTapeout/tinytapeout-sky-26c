## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

# Reconfigurable mixed-precision 2x2 systolic MAC array

## How it works

A 2x2 weight-stationary systolic array of multiply-accumulate processing
elements (PEs). Two 4-bit activation streams (one per row) enter from the
west and shift eastward through registered PEs every clock cycle. Weights
are preloaded once via a 4-pulse load sequence, one PE per pulse, then held
stationary while activations stream through.

Each PE:

1. Optionally masks its activation and stored weight down to 2 bits
   (`precision_sel = 1`) instead of the full 4 bits -- a cheap way to get
   a genuine precision switch without a second multiplier tree.
2. If the (masked) activation is zero, forces both multiplier operands to
   a constant zero instead of switching on a result that's guaranteed to
   be zero -- "zero-skip" via operand isolation, standing in for literal
   clock-tree gating.
3. Otherwise computes `product = a_masked * w_masked` and
   `psum_out = psum_in + product`.
4. Forwards its activation to the PE to its east (registered), and its
   partial sum to the PE to its south (registered) -- the systolic
   dataflow.

Column 0's partial sum (`PE(1,0)`'s output) and column 1's partial sum
(`PE(1,1)`'s output) can't both fit on the 8 `uo_out` pins at once, so they
alternate: column 0 on even cycles, column 1 on odd cycles, flagged by
`uio_out[7]` (`col_id`).

## Known limitation

`psum_out` has no saturation logic -- two PEs' 8-bit products summed down a
column can in principle exceed 8 bits and wrap. Left out to keep the gate
count down for a 1-tile project; a saturating adder would be the natural
next addition.

## How to test

1. Reset the design (`rst_n` low for a few cycles, then high).
2. Load weights: for each of the 4 PEs in order `PE(0,0), PE(0,1), PE(1,0),
   PE(1,1)`, set `uio_in[3:0]` to the desired weight and pulse
   `uio_in[4]` (`weight_load`) high for exactly one clock cycle.
3. Set `uio_in[5]` (`precision_sel`) to 0 for 4-bit mode or 1 for 2-bit
   mode.
4. Drive `ui_in[3:0]` with the row-0 activation and `ui_in[7:4]` with the
   row-1 activation each cycle.
5. After 4 cycles (pipeline fill), `uio_out[6]` (`valid_out`) goes high and
   `uo_out` alternates between column 0 and column 1's partial sum every
   cycle, indicated by `uio_out[7]` (`col_id`).

## External hardware

None -- purely digital, no external hardware required.



