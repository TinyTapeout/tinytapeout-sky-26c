<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

SIC-1 is an 8-bit Single Instruction computer. The only instruction it supports is SUBLEQ: Subtract and Branch if Less than or Equal to Zero. The instruction has three operands: A, B, and C. The instruction subtracts the value at address B from the value at address A and stores the result at address A. If the result is less than or equal to zero, the instruction jumps to address C. Otherwise, it proceeds to the next instruction.

### Memory map

The SIC-1 computer has an address space of 256 bytes, and and 8-bit program counter. The first 253 bytes are used for the program memory, and the last 3 bytes are used for input, output, and for halting the computer:

| Address | Label | Read      | Write     |
| ------- | ----- | --------- | --------- |
| 253     | @IN   | `ui` pins | Ignored   |
| 254     | @OUT  | Returns 0 | `uo` pins |
| 255     | @HALT | Returns 0 | Ignored   |

Setting the program counter to 253, 254, or 255 will halt the computer.

Each instruction is 3 bytes long, and the program counter is incremented by 3 after each instruction, except when a branch is taken.

For more information, check out the [SIC-1 Assembly Language Reference](https://github.com/jaredkrinke/sic1/blob/master/sic1-assembly.md).

### Execution cycle

Each instruction takes two cycles to execute, regardless of whether a branch is taken or not. The execution of an instruction is divided into the following stages:

1. a. Write result: writes the result of the previous instruction back to memory.
   b. Read instruction: reads A, B, and C from the memory at the address pointed to by the program counter (PC).
2. Read data: Reads the values at addresses A and B and calculate the result of valA - valB.
   If the result is less than or equal to zero, set the PC to C. Otherwise, increment the PC by 3 to point to the next instruction.

The pseudocode for the execution cycle is as follows:

```
(1) result = valA - valB
    next_PC = result <= 0 ? C : PC + 3
    memory[A] <= result
    A <= memory[next_PC]
    B <= memory[next_PC+1]
    C <= memory[next_PC+2]
    PC <= next_PC
(2) valA <= memory[A]
    valB <= memory[B]
```

Where `valA` and `valB` are internal registers that hold the values read from memory at addresses A and B, respectively.

The `<=` symbol indicates a memory or register write operation, while the `=` symbol indicates a combinational assignment.

### Control signals

The `uio` pins are used to load a program into the computer, and to control the computer:

| uio pin | Name       | Type   | Description                                                             |
| ------- | ---------- | ------ | ----------------------------------------------------------------------- |
| 0       | run        | input  | Start the computer                                                      |
| 1       | halted     | output | Computer has halted                                                     |
| 2       | set_pc     | input  | Set the program counter to the value on ui pins                         |
| 3       | load_data  | input  | Load the value from the ui pins into the memory addressed by PC         |
| 4       | out_strobe | output | Pulsed for one clock cycle when the computer writes to @OUT (`uo` pins) |
| 5       | dbg[0]     | input  | Debug select bit 0                                                      |
| 6       | dbg[1]     | input  | Debug select bit 1                                                      |
| 7       | dbg[2]     | input  | Debug select bit 2                                                      |

### Debug interface

The `dbg` pins are used to expose internal signals for debugging on the `uo` pins. When the `dbg` pins are set to 0, the `uo` pins will output the @OUT value. For other values of `dbg`, the `uo` pins will output the following signals:

| dbg[2:0] | Signal               |
| -------- | -------------------- |
| 0        | None                 |
| 1        | PC                   |
| 2        | A                    |
| 3        | B                    |
| 4        | C                    |
| 5        | valA                 |
| 6        | result (valA - valB) |
| 7        | state (2 bits)       |

The `state` signal is a 2-bit value that represents the current state of the computer, corresponding to the execution cycle stages described above (1 and 2), and a 2-bit value of 0 when the computer is halted.

## Programming the SIC-1

You can use the [online SIC-1 app](https://jaredkrinke.itch.io/sic-1) to compile and simulate your SIC-1 programs. Click on "Run game" and then "Apply for the job", close the "Electronic mail" popup. Paste the code and click on "Compile" (on the bottom left). You'll see the compiled code in the "Memory" window on the right, and will be able to step through the code.

To load a program and run a program, follow this sequence:

1. Set the `ui` pins to 0 (target address)
2. Pulse the the `load_pc` pin for a single clock cycle
3. Set the `ui` pins to the value you want to load
4. Pulse the `load_data` pin for a single clock cycle
5. Repeat steps 3-4 until you have loaded the entire program
6. Set the `ui` pins to the address you want to start at (usually 0)
7. Pulse the `set_pc` pin for a single clock cycle
8. Set the `run` pin to 1. The computer will start running the program, and the `halted` pin will go high when the program is done.

If you want to step through the program, you can pulse the `run` pin to advance one instruction at a time.

### Reading the internal memory

You can read the internal memory of the SIC-1 while the program is halted.
To do this, follow these steps:

1. Set the `run` pin to 0 to halt the computer, and wait for the `halted` pin to go high.
2. Set the `ui` pins to the address you want to read.
3. Pulse the the `load_pc` pin for a single clock cycle.
4. Set the `dbg` pins to `010` (binary for 2) to select the "A" debug signal.
5. Read the value on the `uo` pins.

The value on the `uo` pins will be the value stored in the internal memory at the address you specified.
