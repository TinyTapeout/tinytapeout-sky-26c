## How it works

ORCA is a self-optimizing, self-healing evolvable logic engine. It contains:

1. **A CGP-style reconfigurable fabric** — a 4×4 grid of cells, each an
   arbitrary 2-input Boolean function (4-bit LUT) with two 4:1 input muxes.
   Column 0 reads the 4 primary inputs; column *c* reads only column *c−1*
   (strictly feed-forward, so combinational loops are impossible by
   construction). Two outputs are selected from the last column. The entire
   circuit is defined by a 132-bit genome.

2. **An on-chip (1+1) evolution strategy.** Each generation, a xorshift32 PRNG
   picks one genome bit to flip. An eval engine scores the resulting circuit
   against a 16-row × 2-output target truth table (fitness = correct outputs,
   with measured circuit *speed* as a lexicographic tiebreaker). Better-or-equal
   mutants are kept; worse ones are reverted via a single-entry mutation log
   (XOR is its own inverse). Optional simulated annealing accepts some worse
   mutants with decaying probability.

3. **A settle-time sensor** — a `dont_touch` delay-line that shrinks the
   fabric's compute window until it fails, measuring how fast the evolved
   circuit really is *on this specific die*. Evolution keeps optimizing speed
   after correctness is solved, exploiting this die's process variation
   (Thompson's classic experiment, on modern silicon).

At reset the target is parity + AND-OR, so the chip evolves with no host
attached: LEDs on `uo_out[7:4]` climb as fitness converges and `uo_out[3]`
lights when solved. A bit-banged serial interface (24-bit command frames on
`ui_in[4:6]`, response on `uio[3]`) exposes every CSR: target truth table,
genome read/write, PRNG seed, fault injection, annealing temperature, fitness
counters, and the settle-tap measurement.

**Demos:** EVOLVE (converge on any loaded truth table), HEAL (inject stuck-at
faults and watch evolution route around the dead cells), CHARACTERIZE (read
per-die settle-tap profiles). HEAL needs no host: with `ui[1]` (anneal) held
high, a press on `ui[2]` kills 3 cells, re-baselines fitness, and arms the
annealing temperature — the solved LED drops, the fitness LEDs dip, and both
recover as evolution re-routes around the dead cells.

## How to test

Smoke test with no host: strap `ui_in[0]` (run) high, clock at 25 MHz, and
watch `uo_out[7:4]` climb within a second; `uo_out[3]` = solved,
`uo_out[0]` = generation heartbeat, `uo_out[1]` = evolving.

Host-free HEAL demo: additionally strap `ui_in[1]` (anneal) high; once solved,
pulse `ui_in[2]` — solved drops and the fitness LEDs dip, then recover over a
few seconds as evolution routes around the three dead cells.

With the demo board host tools (`host/` in the repo):

```
tt_orca.py --port /dev/ttyACM0 id            # reads 0x08CA ("ORCA")
tt_orca.py ... seed 0xDEADBEEF               # reseed the PRNG
tt_orca.py ... run                           # start evolution
tt_orca.py ... poll                          # generation / fitness / accepts
live_plot.py --port /dev/ttyACM0             # live fitness plot
tt_orca.py ... inject-fault 0x4420 0x0000    # HEAL demo (kills 3 cells)
```

The full cocotb suite (`test/`) runs against the behavioral RTL with
`make -B` and unit suites with `make -B UNIT=fabric|fault|eval|es`; the
evolution end-to-end test is bit-exact against the Python golden model in
`model/`.

## External hardware

None required. Optional: scope on `uio[4]` (accept pulse trigger) and `uio[5]`
(delay-line tap strobe) for the CHARACTERIZE demo; LEDs/PMOD on `uo_out`.

## Pinout

| Pin | Dir | Function |
|---|---|---|
| ui[0] | in | run (evolution enable) |
| ui[1] | in | anneal_en |
| ui[2] | in | fault_demo (rising edge kills 3 cells) |
| ui[3] | in | reserved |
| ui[4] | in | ser_data |
| ui[5] | in | ser_shift |
| ui[6] | in | ser_exec |
| ui[7] | in | reserved |
| uo[0] | out | heartbeat (generation counter bit) |
| uo[1] | out | evolving |
| uo[2] | out | accept pulse |
| uo[3] | out | solved |
| uo[7:4] | out | best_fitness[11:8] |
| uio[3] | out | ser_out (serial response) |
| uio[4] | out | scope trigger (= accept pulse) |
| uio[5] | out | settle-sensor tap strobe |
| uio[7] | out | fabric PO0 live |
