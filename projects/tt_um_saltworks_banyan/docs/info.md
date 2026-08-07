<!--
 The docs check greps for the UNEDITED template sentences under "How it works"
 and "How to test", not for section headings. Both are fully rewritten below.
 NOTE TO FUTURE EDITORS: do not quote the template's placeholder sentences
 anywhere in this file, not even in a comment -- the check is a substring grep
 over the whole file and a comment quoting them fails it just as loudly.
-->

## How it works

This is an **8×8 self-routing packet switch fabric**, bit-serial, and its gate
netlist is **proved equivalent to its specification inside the Lean kernel**.

It recreates the banyan half of **US Patent 4,910,730** (1988) — a high-speed
ATM packet switch built as two chips, a Batcher sorter and a banyan router. That
two-chip partition is also the proof's partition: the sorter is the *hypothesis*,
the banyan is the *theorem*. This chip is the proved half.

**The fabric.** Twelve 2×2 switch elements in three stages. Each element latches
two bits per frame — an activity bit and one destination-address bit — and then
streams data through transparently. Stage 0 resolves the most significant
address bit, stage 1 the next, stage 2 the least. After three stages a packet
has arrived on the line its address names.

**The frame**, MSB first, on each of the 8 serial lines:

| cycle | 0 | 1 | 2 | 3 | 4 | 5 | 6… |
|---|---|---|---|---|---|---|---|
| | ACT | a₂ | ACT | a₁ | ACT | a₀ | payload |

The activity bit is repeated once per stage. That is not redundancy: an interior
stage can only latch a *routed* activity bit, and the stage upstream of it has
not decided how to route at cycle 0. Without the repeat, interior stages read the
previous frame's routing as their activity.

An idle line carries all zeros, so its activity bit is 0 and it claims no output;
an unclaimed output drives 0, so idleness propagates. That matters more than it
looks — an earlier version of this design could not distinguish "idle" from
"destination bit 0", and silently dropped packets.

**What is proved.** The synthesized gate netlist of the switch element — real
sky130 standard cells, flip-flops included — computes the same outputs and next
state as the Lean specification, for **every state and every input**, checked by
kernel reduction and lifted to arbitrarily many cycles by induction. No SAT
solver is trusted, and no `native_decide` is used: the certificates are pure
kernel computation, and the whole development depends on exactly the three
standard Lean axioms.

**What is not proved.** A banyan routes correctly only when the destinations
presented to it are **sorted**. Measured: of all 40,320 full-load permutations,
exactly **4,096 (10.16%)** route without internal collision — one per switch
setting. The Batcher sorter that would guarantee sortedness is not on this chip,
in silicon or in Lean. So this is a correct router given a correct input order,
and the ordering must come from off-chip. That was the 1988 architecture too.

## How to test

Drive `ui_in[7:0]` with 8 serial bit streams, one per input line, clocked at up
to 25 MHz. Pulse `uio_in[0]` (`sof`) high for one cycle to align the frame
counter, then present frames as in the table above. Read the routed streams from
`uo_out[7:0]`.

`uio_out[3:1]` reports the frame counter and `uio_out[4]` (`valid`) goes high
during the payload window, so you can align a capture without counting cycles
yourself.

A worked example: to send a packet from input line 5 to output line 2, drive
line 5 with `1, 0, 1, 1, 1, 0` followed by the payload — activity 1, then
address bits 0,1,0 = 2, each preceded by its repeated activity bit. Leave the
other lines at 0. The payload appears on `uo_out[2]`.

**Outputs are meaningless before cycle 6.** The data path is combinational, so
the header cycles at the output carry whatever the previous frame's routing
produced. Sample only while `valid` is high.

**Destinations must be distinct and sorted across the active lines** — that is
the fabric's hypothesis, not a suggestion. Unsorted input collides internally
and the affected packets are lost.

## Speed — three different numbers, and they are not interchangeable

| | rate | what it is |
|---|---|---|
| **the logic** | **89 Mbit/s per link** (102 typical) | post-place-and-route signoff STA, slow corner `ss_100C_1v60`. The fabric is bit-serial, so MHz *is* Mbit/s per link |
| **this chip** | **25 Mbit/s per link** | what `info.yaml` requests. **A pad limit, not a core limit** — the TinyTapeout pad's maximum *output* rate is 33 MHz, half its input ceiling, and a bit-serial fabric toggles every output every cycle |
| the harness | shared | the demo rate is set by the pinout and the board, not by the fabric |

Signoff, all nine corners: **zero setup violations, zero hold violations**, worst
hold slack **+0.11 ns**. Hold is the number worth quoting, because lowering a
clock fixes setup and does nothing for hold — a design can be "run slower" out of
a setup problem and never out of a hold one.

## External hardware

None required. Any source of 8 synchronised bit streams will do — a
microcontroller, an FPGA, or the TinyTapeout demo board's GPIO.
