<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a single-cycle RISC-V processor core supporting a subset of the RV32I base
integer instruction set. Every instruction — fetch, decode, execute, memory access, and write-back —
completes in a single clock cycle.

The core consists of seven modules: an instruction memory (`imem`), a data memory (`dmem`), a register
file (`regfile`), a control unit that decodes instructions and generates control signals, an
immediate generator (`immgen`), an ALU, and a top-level module that wires them together and manages
the program counter.

Because the design only exposes 8 dedicated input pins and 8 dedicated output pins, the internal 32-bit
program counter (`debug_pc`) is exposed externally through a byte-select multiplexer: `ui_in[1:0]`
selects which of the four bytes of `debug_pc` is currently driven onto `uo_out`. Cycling through all
four select values and reassembling the bytes reconstructs the full 32-bit program counter value,
letting you observe the core's execution externally in real time.

Reset is active-low (`rst_n`) at the TT interface and is inverted internally to match the core's
active-high reset convention.

Known limitations: only a subset of RV32I is currently implemented — non-`addi` I-type instructions
and `blt`-style branches are not yet functionally correct in this revision.

## How to test

1. Hold `rst_n` low for at least a few clock cycles, then release it (drive high).
2. Set `ui_in[1:0]` to `00`, `01`, `10`, and `11` in sequence, sampling `uo_out` after each change, to
   read back the four bytes of the program counter (`debug_pc[7:0]`, `debug_pc[15:8]`,
   `debug_pc[23:16]`, `debug_pc[31:24]` respectively).
3. Reassemble the four bytes into a 32-bit value to get the current program counter.
4. Immediately after reset, the reconstructed program counter should read `0`.
5. Clock the design and repeat steps 2-3; the program counter should advance by 4 each cycle for
   sequential instructions, and should jump non-sequentially when the program executes a branch or
   jump instruction, confirming the core is correctly fetching and executing its preloaded program.

## External hardware

No external hardware is required.
