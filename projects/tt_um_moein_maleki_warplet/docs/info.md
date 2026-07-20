<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# warplet

## How it works

warplet is a first, minimum-viable silicon implementation of the defining SIMT (Single-Instruction-Multiple-Thread) property — one PC, one decoder, many lockstep lanes, divergence via predication — shipped as a 2×2-tile TinyTapeout submission (`tt_um_moein_maleki_warplet`), hardened and signed off at 40 MHz with clean setup/hold margin across all 9 PVT signoff corners; being fully synchronous, it is functionally correct at any lower clock too, and typical fabricated silicon will run faster than the signed-off worst-case corner. Two lanes execute the same instruction from a shared program counter every cycle — one decoder, not two. Each lane owns its own register file (`R0`–`R3`, 8-bit), a sticky predicate `P`, a transient skip flag `S` (exposed in the BFM's parsed STATE as p0/p1 and armed0/armed1), and a hardwired `laneID` (0 or 1). Per-lane control flow ("divergence") comes entirely from predication: `CMPEQ`/`CMPLT` set that lane's `P` and arm a one-instruction skip window — the instruction immediately following a compare executes in a lane only if that lane's `P` is true. There is no per-lane branch; the only branch, `JP0`, is warp-uniform and taken based on lane 0's `P` alone (lane 0 is the scalar "leader"). `MUL` is an 8-cycle serial shift-add reusing each lane's adder (both lanes multiply concurrently; the PC stalls); every other instruction is single-cycle, and instruction latency never depends on which lanes are predicated off — a squashed lane burns the same cycles as an active one, which keeps cycle counts a pure function of the instruction stream.

Two on-tile scratchpads back the core: a 24×8-bit program RAM and a 16×8-bit data RAM, both flip-flop arrays with their reset ties disabled (`.rst_n(1'b1)`) rather than latches. Program RAM holds whatever was last written to each cell and is undefined at power-on — there is no way to preload silicon, and the JTAG loader is responsible for padding every load out to the full 24 words with `HALT` (`0xF2`) so no reachable cell is ever left uninitialized — so the core always **wakes HALTED** and waits for a JTAG host to load a program before it can run; a fetch at PC ≥ 24 (the PC is 5 bits and wraps mod 32) always returns `HALT` (`0xF2`) in hardware, so a runaway or off-the-end program halts deterministically rather than executing garbage. Both RAMs survive `rst_n` — neither is cleared by reset — which for data RAM is what lets a debugger inspect memory left over from a previous run; program RAM's survival is invisible in practice because the loader always repopulates it before every `RESUME`. `LDR`/`STR` are lane-indexed — effective address = `(R[rs] + laneID) mod 16` — and because the RAM is single-ported, a load/store instruction serializes lane 0 then lane 1 across two cycles. One addressing wart to know: `LDI`'s immediate is 3 bits (0–7), so addresses 8–15 can't be loaded in one instruction — build them arithmetically (e.g. `LDI r3,7; ADD r3,r3; LDI r2,1; ADD r3,r2` puts 15 in `r3`). The shipped vector-add demo kernel stays `vecadd4` — four elements per operand — even with 16 bytes of data RAM, because an 8-element `vecadd8` is out of the *ISA's* reach, not the memory's: with no add-immediate and only 4 registers per lane, the minimal load-add-store-advance loop body is 10 instructions while the only branch (`JP0`) reaches back at most 8, and a fully unrolled version needs ~28 of the 24 program words. `OUT rd` is the one uniform, non-per-lane write: it latches lane 0's register into an 8-bit `OUTREG`, whose low 6 bits are always driven onto `uo[7:2]` — the only way to see a result without JTAG.

The only host interface is an IEEE 1149.1-style JTAG TAP — it is the program loader, the data loader, and the debugger, all at once. Unlike a conventional TAP, this one is entirely **clock-synchronous**: TCK/TMS/TDI are synchronized and edge-detected inside the `clk` domain instead of driving their own clock tree, which avoids any CDC work at the cost of one constraint — `TCK` must run at ≤ `clk`/5 (JTAG hosts bit-bang at ≤1 MHz or so; the core's 40 MHz all-corner signoff target (any lower clock works; TCK limit scales as clk/5) makes this essentially free). IDCODE reads back `0x1574C9AD`. Besides IDCODE and BYPASS, three data registers do the real work: `DTMCTL` (halt/resume/step/reset control plus halted/done status), `PROG` and `DATA` (byte-at-a-time writes into the two scratchpads through auto-incrementing pointers, legal only while halted), and `STATE` — a scan chain of exactly 81 bits threaded through every architectural flip-flop (PC, both lanes' `R0`–`R3`/`P`/`S`, `OUTREG`). Shifting `STATE` is destructive: it drains the live values out to TDO *and* zeroes the chain in the same operation, so a debugger that wants to keep running after reading `STATE` must re-shift the same bits back in (`write_state`) to restore what it just read.

### Pin map

| Pin | Direction | Function |
|---|---|---|
| `ui[0]` | in | TCK |
| `ui[1]` | in | TMS |
| `ui[2]` | in | TDI |
| `ui[7:3]` | in | unused |
| `uo[0]` | out | TDO |
| `uo[1]` | out | RUN (1 = running, 0 = halted) |
| `uo[7:2]` | out | `OUT[5:0]` = `OUTREG[5:0]` |
| `uio[7:0]` | in, unused | reserved for a future QSPI interface; always driven as inputs (`uio_oe = 0`) |

### Instruction set (8-bit instructions; `rd`,`rs` ∈ {R0..R3})

| Encoding `[7:0]` | Mnemonic | Semantics (per lane unless noted) |
|---|---|---|
| `0000 dd ss` | `ADD rd,rs` | rd ← rd + rs |
| `0001 dd ss` | `SUB rd,rs` | rd ← rd − rs |
| `0010 dd ss` | `AND rd,rs` | rd ← rd & rs |
| `0011 dd ss` | `OR rd,rs` | rd ← rd \| rs |
| `0100 dd ss` | `XOR rd,rs` | rd ← rd ^ rs |
| `0101 dd ss` | `MOV rd,rs` | rd ← rs |
| `0110 dd ss` | `SHR rd,rs` | rd ← rd >> 1 (second operand ignored; write `SHR rd,rd` by convention) |
| `0111 dd ss` | `MUL rd,rs` | rd ← (rd × rs)[7:0], 8-cycle |
| `1000 dd ss` | `CMPEQ rd,rs` | P ← (rd == rs); next instr predicated on P |
| `1001 dd ss` | `CMPLT rd,rs` | P ← (rd < rs) unsigned; next instr predicated on P |
| `1010 dd ss` | `LDR rd,[rs]` | rd ← MEM[(rs + laneID) mod 16]; 2-cycle |
| `1011 dd ss` | `STR rd,[rs]` | MEM[(rs + laneID) mod 16] ← rd; 2-cycle |
| `110 dd iii` | `LDI rd,imm3` | rd ← imm3 (0–7); larger constants built arithmetically |
| `1110 rrrr` | `JP0 rel4` | if lane0.P: PC ← PC + sext(rel4) (−8..+7) |
| `1111 dd 00` | `NOP` | — |
| `1111 dd 01` | `LID rd` | rd ← laneID |
| `1111 dd 10` | `HALT` | stop; set `done`; core halts (dd ignored) |
| `1111 dd 11` | `OUT rd` | OUTREG ← lane0.rd (uniform; lane 1 write suppressed) |

Pseudo-op: the assembler also accepts `JMP rel4`, expanding to `CMPEQ r0,r0; JP0 rel4` (an always-true compare makes the branch unconditional) — used by `blink`'s loop below.

### JTAG data registers

| IR | DR | Width | Function |
|---|---|---|---|
| `0001` | IDCODE | 32 | `0x1574C9AD` |
| `0010` | DTMCTL | 8 | write: `HALTREQ,RESUME,STEP,PCRST,PTRRST`; capture: `HALTED,DONE` |
| `0011` | PROG | 8 | shift a byte; Update-DR writes `PROG_RAM[prog_ptr++]` — halted-only |
| `0100` | DATA | 8 | Capture-DR loads `DATA_RAM[data_ptr]`; Update-DR writes + increments (4-bit pointer, wraps mod 16) — halted-only |
| `0101` | STATE | 81 | full architectural scan (PC + both lanes' `R0–R3,P,S` + `OUTREG`); shifting is destructive — drains *and* zeroes the chain — halted-only, like PROG/DATA |
| `1111` (or any unlisted code) | BYPASS | 1 | 1-bit pass-through |

## How to test

Everything below happens over the JTAG TAP on `ui[0]`=TCK, `ui[1]`=TMS, `ui[2]`=TDI, `uo[0]`=TDO, respecting the one hard timing rule from above: `TCK` ≤ `clk`/5. On the TT demo board, the onboard RP2040 bit-bangs this exact sequence in MicroPython; `test/jtag_bfm.py` is the reference implementation both the demo-board driver and the cocotb testbench are built from — read it for the precise shift-timing of every DR.

HALTREQ takes effect on LDR/STR/MUL dispatch cycles; a compute-only infinite loop (no memory ops) cannot be halted over JTAG — use `rst_n`. The RUN pin (uo[1]) reflects run state live.

Full lifecycle, power-on to result:

1. **Reset.** Drive `rst_n` low then high with `clk` free-running throughout. The core wakes **HALTED** — program RAM is undefined at power-on, so there's nothing to run yet.
2. **TAP reset.** Hold `TMS` high for ≥5 `TCK` cycles, then one cycle with `TMS` low — lands in Run-Test/Idle regardless of the TAP's prior state.
3. **Load the program.** IR=`DTMCTL`, write `HALTREQ=1,PTRRST=1` (halt + zero both auto-increment pointers); IR=`PROG`; shift each instruction byte through the DR (Update-DR writes `PROG_RAM[prog_ptr]` and post-increments). Always pad the word list out to the full 24 words with `HALT` (`0xF2`) — program RAM has no reset, so any cell you don't write keeps whatever was there before; the host, not the hardware, is responsible for leaving no reachable cell undefined.
4. **Load the data.** Repeat the halt/`PTRRST` write, IR=`DATA`, shift each data byte through the DR (same auto-increment-on-Update-DR pattern, into `DATA_RAM`).
5. **`PCRST`.** IR=`DTMCTL`, pulse `PCRST=1` to zero the PC.
6. **`RESUME`.** IR=`DTMCTL`, pulse `RESUME=1` — the core leaves halt and starts fetching at PC 0.
7. **Poll `DONE`.** Repeatedly shift IR=`DTMCTL` with an all-zero write and read the two capture bits back — bit 0 `HALTED`, bit 1 `DONE` — until both read 1 (`HALT` sets `done`).
8. **Read results.** IR=`DATA`: each Shift-DR captures `DATA_RAM[data_ptr]`; echo the captured bits straight back out through TDI so the following Update-DR rewrites what it just read instead of corrupting it (read-modify-write; the pointer still post-increments). Or IR=`STATE` for the full 81-bit architectural snapshot (PC + both lanes' registers/flags + `OUTREG`) — also destructive, so re-shift the same bits back in through TDI afterward if you want to keep debugging from that point.

**Worked example — `dot4`** (`test/kernels.py::DOT4`, exercised end-to-end by `test/test.py::test_lifecycle_dot4`): load `DOT4`, then load data `a=[1,2,3,4]` at addresses 0–3 and `b=[5,6,7,8]` at addresses 4–7 (8 bytes — the lower half of the 16-byte data RAM), `PCRST`, `RESUME`, poll `DONE`. Expected dot product: `1·5 + 2·6 + 3·7 + 4·8 = 70`. Read it back two ways at once: the full byte (`70`) via a `DATA` DR read of address 0, and — with zero further JTAG traffic — on `uo[7:2]`, because `dot4`'s last instruction is `OUT r0`, which also latches 70 into `OUTREG`; only its low 6 bits reach the pins, so `uo[7:2]` reads `70 & 0x3F = 0b0100_0110 & 0b0011_1111 = 6`. Both numbers are the same register, just truncated two different ways.

**Standalone demo — `blink`** (`test/kernels.py::BLINK`): needs no data load, just program + `PCRST` + `RESUME`. It doubles a single set bit in `OUTREG` once per loop iteration (`LDI r0,1`; loop: `OUT r0; ADD r0,r0` doubles it), and a `CMPEQ r0,r1`-against-zero wrap check reloads `r0` to 1 once the doubling overflows — continuously repeating: six brightening steps, two dark frames, repeat (`1,2,4,8,16,32` light up `uo[7:2]`; `64,128` fall outside the 6 visible bits just before the reload) — visible on the demo board's LEDs with the JTAG host disconnected; the core just needs `clk`/`rst_n` to keep running.

The assembler (`test/asm.py`) and all three demo kernels (`test/kernels.py`: `vecadd4`, `dot4`, `blink`) are plain, table-driven Python and are the single source used by both the cocotb test suite and any silicon bring-up script.

## External hardware

None required to run the lifecycle above — the TT demo board's onboard RP2040 already bit-bangs JTAG over `ui[2:0]`/`uo[0]`, no extra wiring needed. Optional: an FT232-class USB-JTAG adapter wired to the demo board's SIL headers, driven by OpenOCD, as a faster/more standard host than MicroPython bit-banging.
