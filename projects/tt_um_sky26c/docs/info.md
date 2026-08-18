## How it works

![Datapath block diagram](datapath.svg)

A discrete-time first-order kinetic (Markovian) synapse driving a leaky
integrate-and-fire membrane.

**Receptor state** — `r`, the fraction of open post-synaptic receptors, follows
`dr/dt = alpha*(1-r) - beta*r`, integrated with the exact closed-form solution
(not forward Euler), so it is stable at any timestep:

- spike high: `r <- r*e^-(alpha+beta) + r_inf*(1 - e^-(alpha+beta))`
- spike low: `r <- r*e^-beta`
- `alpha = 25/256`, `beta = 56/256`, `r_inf = alpha/(alpha+beta) = 25/81`
- coefficients stored as their exponentials in Q0.16, not as rates
- one 16x16 multiply covers both branches; only the offset differs

**Membrane** — `g = g_max * r` with `g_max = 255/256`, `I_syn = g * (E_rev - V)`,
and `V` integrates `I_syn` less a linear leak:

- `I_syn` is signed, so it always pulls `V` toward `E_rev`
- `E_rev` above `V_threshold` = excitatory; below = inhibitory, same path
- `V > V_threshold` fires: spike asserts one cycle, `V` resets the *following*
  cycle — keeps the crossing observable, and gives a one-cycle refractory

**Numerics**

- `r` and derivatives unsigned Q0.16; `V`, `E_rev`, leak unsigned Q0.8
- `r` needs the extra width or a slow tau decays by < ½ LSB of Q0.8 and latches
- every rescale is a power-of-two slice with round-to-nearest, never a divider
- every stage saturates instead of wrapping

### Timing and reset

- one clock cycle = one model timestep; there is no multi-cycle update
- the coefficients are per-timestep, so Δt is whatever the clock says it is —
  the defaults above are the rates per cycle, not per second
- the cocotb suite clocks at 1 kHz, i.e. Δt = 1 ms of model time; silicon runs
  the same recurrence at 20 MHz
- `rst_n` low clears `r`, `V`, `spike` and the coefficient chain, so the part
  comes out of reset at rest on the default coefficients
- `ui[5:2]` and `uio_in` are unused; `uio_oe` is tied high, so the bidir bus is
  an output at all times

### Coefficient load port

`MAT_EXP_SPK`, `MAT_EXP_NSPK` and `B_SPK` live in a 48-bit shift register.

- `ui[0]` = `cfg_din`, `ui[1]` = `cfg_shift`
- MSB first, 48 cycles: `MAT_EXP_SPK`, `MAT_EXP_NSPK`, `B_SPK`
- no room in the pin budget to stream 16 bits/cycle, hence serial + flops
- `cfg_shift` high freezes `r`/`V`/`spike`, so a load costs no model time and a
  partial word never reaches a live update
- reset clears the chain; an all-zero field selects that coefficient's default,
  independently of the other two
- zero is unusable anyway (zero `MAT_EXP` collapses `r`, zero `B_SPK` makes the
  spike input inert), so it is free as the "never loaded" sentinel

### Voltage clamp

- `ui[6]` high holds `V` and forces the driving force to unity
- `uo_out` then reports the conductance waveform directly
- a measurement mode for the kinetics, not a clamp at a command potential

### Readout

- `uo_out` = `I_syn`, Q0.8, unsigned — a negative current reads as 0
- `uio_out` = `{V[7:1], spike}`; bit 0 is the post-synaptic spike
- `V[0]` never leaves the chip, so `V` reads back only to even Q0.8 codes
- add ½ step when reading to centre the error at ±0.5 LSB instead of biasing low

## How to test

```sh
cd test
make -B
```

- `make` exits 0 even when assertions fail — grep `results.xml` for `failure`
- drive `ui[7]` high for the cycles a pre-synaptic spike is present
- `ui[6]` selects clamped (conductance) vs. unclamped (full dynamics)
- leave `ui[1:0]` at 0 to run on the default coefficients
- all inputs arrive on `ui_in`, so the bidir bus is output at all times

Suite covers: impulse response, continuous drive to steady state, rest
condition, unclamped firing, and the load port both ways — shifting in the
defaults must reproduce the unconfigured trace sample for sample, and
perturbing each of the three fields must move the part of the waveform it
governs. Plots land in `test/output/`.

## External hardware

None.

## References

1. Destexhe, A., Mainen, Z. F., & Sejnowski, T. J. (1998). Kinetic models of
   synaptic transmission. In C. Koch & I. Segev (Eds.), *Methods in Neuronal
   Modeling* (2nd ed., pp. 1–25). MIT Press.
   — the first-order kinetic scheme this design implements.

2. Rotter, S., & Diesmann, M. (1999). Exact digital simulation of time-invariant
   linear systems with applications to neuronal modeling. *Biological
   Cybernetics*, 81(5–6), 381–402.
   — the exact discretization used instead of forward Euler.
