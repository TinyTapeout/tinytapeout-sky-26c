# LSC-1µ arithmetic kernel

LSC-1µ (also written LSC-1u in source names) is a compact Tiny Tapeout
arithmetic sub-core for a deliberately reduced part of LSC-1. It performs
SET, XOR, and multiplication in GF(2^128) over a byte-serial interface. It
is clocked at the 25 MHz declared project clock.

This chip is **not full LSC-1**. It omits memory, instruction fetch, DEREF,
JUMP, BLAKE3, witness handling, and commit tracking. A host must implement
those omitted functions and turn any suitable work into the micro-operations
described below.

# How it works

`ui_in[7:0]` supplies request bytes and `uo_out[7:0]` supplies response bytes.
An input byte is accepted on a rising clock edge only when `rst_n`, `RX_VALID`,
and `RX_READY` are all high. The sender must keep the request byte stable while
`RX_VALID` is high and `RX_READY` is low. A response byte is accepted only
when `rst_n`, `TX_VALID`, and `TX_READY` are all high; the core keeps the
response byte stable while it is stalled. No request or response transfer
commits on an edge with `rst_n=0`.

First send one opcode, then its fixed-size payload. There is no packet
framing, length field, delimiter, or CRC in this interface.

| Opcode | Request payload, least-significant byte first | Response |
| --- | --- | --- |
| `0x01` XOR | `A0, B0, ..., A15, B15` | `A XOR B`, 16 bytes |
| `0x02` MUL | `A0, ..., A15, B0, ..., B15` | `A x B`, 16 bytes |
| `0x03` SET | `V0, ..., V15` | `V`, 16 bytes |

Values use least-significant-byte-first ordering. MUL uses GF(2^128) with
polynomial `x^128 + x^7 + x^2 + x + 1` (reduction constant `0x87`). SET
copies its value unchanged, and XOR is bitwise. An unsupported opcode returns
one `0xe0` byte and asserts `FAULT` until that byte is accepted. Before
sending another command, accept that response with `TX_READY`, or reset or
deselect the core to abort it.

`BUSY` is high while the enabled core has work or a response pending. One
`DONE_PULSE` is emitted when the final response byte is accepted. `rst_n` is a
synchronous active-low reset: it cancels partial work, clears outputs and
fault state, and returns the core to opcode acceptance. `ena=0` similarly
synchronously aborts partial work and additionally drives the wrapper outputs
and output enables low; no transfer is accepted while the design is disabled.

# How to test

Hold `ena=1`, assert `rst_n=0` for a clock edge, then deassert it. Present an
opcode on `ui_in[7:0]` with `RX_VALID=1` and wait for `RX_READY=1` at a rising
edge. Send each payload byte in the table order, observing the same handshake.
For every response byte, wait for `TX_VALID=1`, sample `uo_out[7:0]`, and
raise `TX_READY=1` for a rising edge. To introduce request stalls, deassert
`RX_VALID`; to stall a response, withhold `TX_READY`. Data must remain stable
during a stalled valid transfer.

SET and XOR stream their response while their payload is being accepted. Drain
each response byte before sending the next SET byte or next XOR A/B pair;
otherwise the core deasserts `RX_READY` and waits. MUL instead accepts all
thirty-two payload bytes before presenting its sixteen response bytes.

For a simple SET check, send `0x03` followed by sixteen chosen bytes and
verify that the sixteen response bytes match in the same order. For XOR, send
`0x01` and alternating A/B bytes, then verify each output byte is the XOR of
its pair. For MUL, send `0x02`, all sixteen A bytes, then all sixteen B bytes,
and compare the result against host-side GF(2^128) arithmetic using the stated
polynomial and byte order. `FAULT` plus an `0xe0` response checks unsupported
opcode handling.

# External hardware

The Tiny Tapeout interface requires a 25 MHz clock, synchronous active-low
reset (`rst_n`), and chip enable (`ena`). Connect request data to `ui[7:0]`
and read response data from `uo[7:0]`. The bidirectional pins are used as
follows:

| Pin | Direction | Meaning |
| --- | --- | --- |
| `uio[0]` | input | `RX_VALID` |
| `uio[1]` | output | `RX_READY` |
| `uio[2]` | output | `TX_VALID` |
| `uio[3]` | input | `TX_READY` |
| `uio[4]` | output | `BUSY` |
| `uio[5]` | output | `FAULT` |
| `uio[6]` | reserved input | Ignored |
| `uio[7]` | output | `DONE_PULSE` |

Use a controller, FPGA, or microcontroller that can honor the ready/valid
handshakes. No external memory, packet engine, or BLAKE3 hardware is connected
to this kernel; if those full-LSC-1 capabilities are needed, they remain host
responsibilities.
