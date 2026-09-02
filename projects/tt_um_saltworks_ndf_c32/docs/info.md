<!--
⚠️ SPLICED UNDER A HEADING THE DATASHEET SUPPLIES. Starts at `##`, never `#` —
`validate.py:check_docs` fails the file otherwise, and the title/author/description
come from info.yaml above this slot.

✅ THE LADDER IS RULED (Captain, 2026-08-18 14:5x): tt_um_saltworks_ndf_c32 ships.
"The processor beside it" was the one ladder-dependent paragraph and it now follows
the ruled top. Everything else describes the fabric/neuron complex, which both
candidate tops carried unchanged.
-->

## How it works

This is a **bit-serial neural dataflow fabric**: signed multiply-accumulate cells
sitting on a self-routing banyan switch, with a small processor beside them sharing
the same 24 pins.

**The fabric.** An 8-port banyan network moves one bit per cycle. Ports are frozen
by the D6 pin map: **0–3** are the MAC cells, **4** is edge-in, **5** is edge-out,
**6** is a CPU-stub and **7** is spare. A packet is self-routing — its header names
the destination and the switch elements read it as it passes, so nothing central
schedules the traffic.

**The frame.** Time is divided into 14-cycle frames. Cycles 0–5 carry the header as
three `ACT`/address pairs, most-significant bit first; cycles 6–13 carry the
payload. `sof` (on `uio_in[6]`) realigns every counter in the design to frame zero,
so a host that loses sync recovers by pulsing one pin.

**The computation.** A 22-frame timetable drives a **2-2-1 schedule**: three cells
compute two hidden units and one output. Cells 0–2 carry the demo; cell 3 is
clocked but idle, present so the array is uniform. Each cell accumulates a signed
product bit-serially, with the sign handled on the final cycle of the frame. Three
serialiser organs read the accumulators back out onto the fabric.

**The processor beside it.** *(This paragraph was ladder-dependent and the ladder is
now ruled: the 32-bit plane ships.)* The top carries a **32-bit RV32I-subset core
reaching memory off-chip through a byte-phase bus adapter**. Every transaction is a
whole 4-phase loop: the adapter drives one address byte per cycle on `uo_out`, takes
one returned byte back on `ui_in`, and reports the transaction TYPE on
`uio_out[1:0]` at phase 0 and the PHASE NUMBER at phases 1-3 — so the host learns
what kind of transaction it is in the same sample it uses to stay aligned, at zero
pin cost. A load costs two loops, a store three: address then data.
**The 32-bit plane occupies the same three pin groups the earlier 16-bit core used**
(`ui_in`, `uo_out`, `uio_out[1:0]`), which is why it needed no new pins.
⚠️ *The core advances only when a transaction retires. That enable wire is a marked
validation artifact rather than a ratified design decision, and this datasheet does
not claim otherwise.*

**What is proved and what is not — stated precisely, because the distinction is the
point of the project.** Each MAC cell is *generated from a Lean model proved correct
in the Lean kernel*, and the generated netlist is then *proved equivalent to its
arithmetic specification over all inputs by SAT*. The signed accumulation is proved
for the drive schedule the design specifies. **The sequencer that produces that
schedule, the pin wrapper, and the fabric glue are hand-written RTL and are not part
of either proof.** A layout of this composition measures area, timing, DRC, LVS and
antenna — it is not a functional demo and not a proof of the whole.

## How to test

**Reset, then frame.** Hold `rst_n` low, release it, then pulse `sof` on
`uio_in[6]`. Every counter in the design returns to frame zero on that pulse — the
sequencer, the fabric and the core's phase counter all read the same net, so they
cannot disagree about where a frame begins.

**Drive an edge.** Present serial data on `uio_in[2]` (`edge_in_dat`) with
`uio_in[3]` as its valid. Results emerge on `uio_out[4]` (`edge_out_dat`) with
`uio_out[7]` (`valid`) marking the cycles that carry them.

**Watch the core.** `uio_out[1:0]` reports the byte-phase; `uo_out` carries the
address byte for that phase. Feeding instruction bytes back on `ui_in` in phase
order walks the core through its loop.

**Clock.** The design is specified at a 55 ns period (18,181,818 Hz). That figure
and `clock_hz` in the manifest are separate fields in separate files and nothing in
either tool checks that they agree — they are kept equal by hand and by review.

⛔ **THERE IS NO COCOTB BENCH IN THIS PROJECT YET, AND THIS SECTION DOES NOT PRETEND
OTHERWISE — but it is no longer BLOCKED, only unwritten.** It was blocked while the
top was unruled: a testbench binds `PROJECT_SOURCES`, which must agree with
`source_files`, which follows `top_module`, so a bench written against the wrong top
is wasted twice. **The ladder is now ruled, so the target is named and the bench is
buildable.** The manifest's source list is machine-checked against the RTL closure by
`docs/silicon-tools/manifest_check.sh`, and `assemble.sh` REFUSES to build a
submission tree while `test/` is missing — so this gap cannot ship unnoticed.

## Known limitation — one result per frame, and it is a design decision not a bug

The serialiser organs have **no shift-enable**: they shift on every load-low cycle.
A 32-bit emission spread across four frames would therefore lose 24 bits into the
header windows. This artifact emits **one int8 frame per result** instead. Full-width
emission needs either a shift-enable port on the serialiser (about +32 selects) or
per-frame reloads; it is priced and owed, and it does not move the area, timing,
DRC, LVS or antenna numbers a layout of this composition produces.

## Signoff — max-fanout DRV at the configuration this bundle submits

*Written 2026-09-02 for the `ndf-2a` resubmission. It describes THIS configuration (branch
`ndf-2a`, `src/config.json`) and no other; the 2026-08-19 submission it replaces carried no
such note, deliberately — see the last paragraph.*

**What changed, and what did not.** Exactly four LibreLane keys differ from the 08-19
submission: `PL_RESIZER_HOLD_SLACK_MARGIN` 0.1 → 0.45, `GRT_RESIZER_HOLD_SLACK_MARGIN`
0.05 → 0.3, `RSZ_CORNERS` (resizing now against the four ss/tt corners instead of `nom_tt`
alone), and `CTS_SINK_CLUSTERING_SIZE` = 10. The RTL is byte-identical to the 08-19
submission; `info.yaml`, the pinout, the 55 ns clock and the 6x2 tile are unchanged.

**What this configuration reports at signoff, all nine STA corners, fanout limit 10:**

```
                              08-19 submission      this bundle
max_fanout violators                    117                1
   clock-tree leaves                    111                0
   datapath                               6                1     wire695/X, fanout 11
max_slew violators                     3317              825
max_cap violators                        27                5
setup worst slack (55 ns period)   +5.668 ns        +7.859 ns
hold worst slack                   +0.111 ns        +0.198 ns
setup / hold TNS                       0 / 0            0 / 0
DRC · LVS · antenna                    0 / 0 / 0        0 / 0 / 0
```

The 08-19 column is the shuttle's own signoff for run 32284710003, reproduced locally
bit-exactly (all 320 shared metrics identical) before the four keys were changed, so the
delta is measured against the fabricated baseline and not against an approximation of it.

**The one remaining violator, and why it is accepted.** `wire695` is a resizer-inserted
datapath buffer at fanout 11 against a limit of 10. Its slack is absorbed: setup closes with
+7.859 ns of margin on a 55 ns period and hold with +0.198 ns, TNS 0.0, in every corner. A
datapath net one over the limit costs transition time on one combinational path that has that
margin to spend. A clock-tree leaf over the limit is a different object — it lands on skew and
insertion delay for every flop beneath it — which is why the 08-19 design's 111 clock-leaf
violators were the thing worth fixing, and `CTS_SINK_CLUSTERING_SIZE = 10` removes all 111.
The datapath remainder is placement-dependent and moves between runs; the council of
2026-08-28 accepted *at most one datapath violator at fanout 11–12, zero clock-leaf* as the
criterion for this configuration, and this bundle meets it.

**Why the previous bundle carried no such note.** The 08-19 submission documents the design
as fabricated, in which `wire695` does not exist and the fanout count is 117. A note naming
one accepted violator would have told a reader that the fabricated part has one; it has 117.
Artifact and evidence describe the same chip at the same time, or they do not travel
together — so this note ships with the configuration it measures, and not before.

## External hardware

None. The design needs no external hardware: drive the pins directly, or from a
microcontroller if you want to stream frames faster than by hand.
