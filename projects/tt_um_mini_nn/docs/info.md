## How it works

Four signed 4-bit MAC lanes compute four dot products per job, with 20-bit
accumulation. A shared activation and four weights arrive as three acknowledged
bytes per vector element. The host supplies START (or START_BIASED followed by
four signed 20-bit biases), streams a nonempty vector
with LAST on its final element, and reads twelve result bytes. Models with more
than four output neurons use successive jobs and replay the activations.

The current top module returns raw signed sums including optional bias. Activation integration,
requantization, and multilayer scheduling are performed by the host or remain
future work. A standalone ReLU block exists but is not connected to this datapath.
The 50 MHz clock is a design target pending SKY130 physical timing verification.

## How to test

Install `test/requirements.txt` in a Python virtual environment and run `make check`
from the repository root. This runs lint, functional tests, block simulations, and
pin-level image/protocol regressions. See `docs/input_protocol.md` for the exact
byte format, handshakes, and clock-domain stability requirements.

On hardware, configure the host to drive ui[7:0], uio[0], uio[2], and uio[3] only;
all other uio pins are status outputs. Hold RX_REQ and TX_ACK low during reset.
After reset release and JOB_READY, send command 01 followed by operand packets,
or command 03 followed by twelve bias bytes and then operand packets.
Acknowledge each output byte individually and check PROTOCOL_ERROR. The status
and data handshakes permit a slow host, but the project clock must remain running.

## External hardware

Tiny Tapeout demo board or a compatible external host supplying the project clock,
reset, and acknowledged byte I/O. Host memory holds images, weights, and intermediate
layer results. See `host/input_protocol.py` for preprocessing and packet helpers.
The SKY 26c digital development configuration does not yet implement the requested
analog-slot physical floorplan; see `docs/sky130_setup.md` before submission.
