<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is a small digital datapath controller built around a finite-state machine (FSM). It receives input data on `ui_in`, controls a memory bank, performs arithmetic through a multiply-accumulate block, and exposes the current status and result through the Tiny Tapeout IO ports.

The top-level module `tt_um_andre_dpe` connects:

- `ui_in[7:0]`: input data bus
- `uo_out[7:0]`: output data bus
- `uio_in[7:0]`: control and debug inputs
- `uio_out[7:0]`: status output bits
- `uio_oe[7:0]`: IO enable configuration

The FSM supports several modes through the control bits `ctl[1:0]`:

- Idle: waits for new operations
- Work: processes the selected datapath operation
- Debug: exposes internal values or memory bank state through `data_out`

The design includes:

- a register/memory bank for storage
- a MAC unit for multiply-accumulate operations
- debug selection logic to read specific memory or intermediate values
- status flags indicating whether the FSM is idle, busy, has data ready, or hit an internal error

In practice, the chip acts as a compact programmable control block for arithmetic and memory access, intended as a learning-oriented Tiny Tapeout implementation.

## How to test

The project is tested with a cocotb-based Verilog simulation.

From the `test` directory, run:

```bash
make
```

This will compile the RTL, run the testbench, and produce a waveform such as `tb.vcd` or `tb.fst` depending on the current dump format settings.

The testbench drives the clock, reset, control bits, debug selector, and input data, then checks:

- reset behavior
- FSM state transitions
- status changes
- output result values
- debug readback from the memory or datapath

To inspect the waveform, open the generated file with GTKWave:

```bash
gtkwave tb.vcd
```

or

```bash
gtkwave tb.fst
```

## External hardware

No external hardware is required for simulation.

This project is intended to run in the Tiny Tapeout environment and can be tested entirely through the supplied Verilog simulation setup.
