## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated
Circuits and Systems (ICAS) and the Department of Electronics and
Communication Engineering (ECE) for providing the necessary resources and
guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD - ECE), Dr. K R Usha Rani
(Associate Dean - PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N.
Subramanya (Principal) for their constant encouragement and support in
facilitating this Tiny Tapeout SKY26C submission.

## How it works

A Bloom filter is a probabilistic data structure that answers set membership
queries in constant time and constant space. It has an asymmetric guarantee:
a negative answer is always correct, while a positive answer may be wrong.
It never produces a false negative, but it can produce a false positive.

This design implements a Bloom filter with a 64-bit array and k = 2 hash
functions, operating on 8-bit input values.

### Measured results

The two hash functions are perfectly uniform: each of the 64 array indices
has exactly four preimages among the 256 possible inputs. The pair map
x -> (h1(x), h2(x)) is injective — all 256 inputs produce a distinct index
pair — so no two values ever write the same two bits.

Exhaustive simulation over all 256 input values, after inserting 12 distinct
values, gives zero false negatives and 17 false positives out of 244
non-members, a rate of 0.070. The theoretical prediction for m=64, k=2, n=12
is 0.098. The measured rate is slightly lower, consistent with the injectivity
property, which the standard formula does not account for since it assumes
independent random hashes.

The design synthesises to 660 standard cells at 38.4% tile utilisation in
sky130A, including 71 flip-flops (64 array bits plus 7 for control).

### Hash functions

Two independent indices are derived from the 8-bit input `x` by XOR-folding
the upper bits down into a 6-bit index (6 bits addresses all 64 array
positions):

    h1 = x[5:0] ^ {x[7:6], 4'b0000}
    r  = {x[4:0], x[7:5]}          // rotate left by 3 (wiring only, no gates)
    h2 = r[5:0] ^ {r[7:6], 4'b0000}

These are deliberately not cryptographic hashes. A Bloom filter only requires
that its hash functions distribute inputs reasonably evenly and independently
of one another; it does not require collision resistance against an adversary.
XOR-folds satisfy this at a cost of four XOR gates total, which is what makes
the design fit in a single tile. This is a stated simplification, not an
oversight.

### Operations

**Insert** sets the bits at positions `h1` and `h2` to 1. Bits are never
cleared except by a full reset, so the array is monotonic.

**Query** returns the logical AND of the bits at `h1` and `h2`. If either bit
is 0, the value was definitely never inserted. If both are 1, the value was
possibly inserted — or two other insertions happened to set those same bits,
which is a false positive.

### Why there are no false negatives

Insertion only ever sets bits, and query only reads the same two positions
that insertion wrote. Once a value is inserted, its two bits are 1 and cannot
return to 0 without a reset, so a subsequent query for that value must return
1. This is a structural property of the design, and it is verified
exhaustively in simulation over all 256 possible input values.

### Architecture

- 64 flip-flops holding the bit array
- Two combinational hash-index generators
- Two 6-to-64 decoders for the insert path
- Two 64-to-1 multiplexers for the query path
- A three-state control FSM (IDLE, EXEC, DONE) with rising-edge detection
  on the strobe input. An operation completes three clock cycles after the
  strobe edge, signalled by a one-cycle pulse on VALID.

## How to test

Reset the design by driving `rst_n` low for at least one clock cycle. This
clears all 64 array bits to 0.

To perform an operation:

1. Place the 8-bit value on `ui_in[7:0]`.
2. Set `uio_in[0]` to select the mode: 1 for insert, 0 for query.
3. Drive `uio_in[1]` from 0 to 1 to strobe the operation. The rising edge
   starts it.
4. Wait for `uo_out[1]` (VALID) to pulse high for one clock cycle.
5. On a query, read the answer on `uo_out[0]`: 1 means possibly present,
   0 means definitely absent.
6. Return `uio_in[1]` to 0 before starting the next operation.

`uo_out[7:2]` continuously exposes one of the two computed hash indices for
debugging. `uio_in[2]` selects which: 0 shows h1, 1 shows h2.
An operation takes three clock cycles from the strobe edge. Do not read
RESULT before VALID pulses.

### Suggested test sequence

Insert the values 0x10, 0x25, and 0x7F. Query each of them and confirm every
answer is 1 — any 0 here would be a false negative and indicate a design
fault. Then query values that were not inserted. Most should return 0; a
small number will return 1, and those are the expected false positives.

Sweeping all 256 possible input values after a known set of insertions lets
you measure the empirical false-positive rate and compare it against the
theoretical prediction p = (1 - e^(-kn/m))^k, where k = 2, m = 64, and n is
the number of distinct values inserted.

## External hardware

None. The design uses only the standard Tiny Tapeout inputs and outputs and
can be driven entirely from the demo board.



