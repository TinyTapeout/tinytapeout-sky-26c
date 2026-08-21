<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.
You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD - ECE), Dr. K R Usha Rani (Associate Dean - PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

## How it works

RTFCE (Reconfigurable Temporal Fault/Constraint Engine) is a multi-context temporal latency
monitor. It watches for configurable start and end events on a shared 2-bit event bus, measures
the number of clock cycles between them per context, and classifies each measurement as PASS,
EARLY, or TIMEOUT against independently configurable minimum and maximum latency bounds.

The design supports three fully independent monitoring contexts. Each context keeps its own
timer, its own armed/idle state, and its own configuration (start event, end event, min latency,
max latency, enable) -- so up to three temporal relationships can be tracked simultaneously
without interfering with each other.

Rather than duplicating the classification logic three times, RTFCE shares a single
classification datapath across all three contexts via an arbiter. When multiple contexts finish
measuring in the same clock cycle, the arbiter serializes access to the shared classifier one
context per cycle -- but the latency value each context reports is captured and frozen the
instant its end event is detected, so the arbitration delay can never change the reported result.
This project physically measures the area/timing tradeoff of that sharing strategy against a
fully-duplicated baseline (documented in the project repository).

Two selectable arbitration policies are implemented: fixed-priority (Context 0 > 1 > 2) and
round-robin (fair rotation among pending contexts), switchable via a configuration register.

The classifier also reports a near-miss diagnostic: a result is flagged as "near miss" if the
measured latency landed within 2 cycles of either boundary (approaching a timeout, or barely
avoiding one), surfaced on a dedicated output bit -- useful as an early warning that a monitored
relationship is close to violating its constraint even when it technically passed.

## How to test

The design uses `ui_in` for event and configuration control, `uio_in`/`uio_out` as a
bidirectional configuration data bus, and `uo_out` as the always-active result/status bus.

**Configuring a context** (write a 13-bit descriptor as two 8-bit transactions):
1. Drive `uio_in` with the config byte, set `ui_in[5:4]` to the target context (0-2), set
   `ui_in[3]` to select byte 0 or byte 1, set `ui_in[1]`=1 (config mode) and `ui_in[2]`=0 (write),
   then pulse `ui_in[0]` (strobe) high for one clock cycle.
2. Byte 0: `[7:6]`=start_event, `[5:4]`=end_event, `[3:0]`=min_latency.
3. Byte 1: `[7]`=enable, `[3:0]`=max_latency.
4. Event codes: `00`=REQ, `01`=ACK, `10`=DATA, `11`=DONE.

**Triggering a measurement:**
1. Set `ui_in[1]`=0 (normal mode), `ui_in[7:6]` to the event code, pulse `ui_in[0]` (strobe) for
   one cycle to signal the start event.
2. Wait the desired number of clock cycles.
3. Pulse the end event the same way.
4. Watch `uo_out[4]` (result_valid) -- when it pulses high for one cycle: `uo_out[1:0]` is the
   result (00=PASS, 01=EARLY, 10=TIMEOUT), `uo_out[3:2]` is the context ID that completed,
   `uo_out[6]` is a fault flag (set on TIMEOUT), and `uo_out[7]` is the near-miss diagnostic.

**Selecting arbitration policy:** write to context select `3` (the "global" address), byte 0,
with `uio_in[0]` = 0 for fixed-priority or 1 for round-robin.

**Reading back configuration or status:** same as writing, but with `ui_in[2]`=1 (read); the
requested byte appears on `uio_out` one clock cycle later. Reading context select `3` returns
the running success/fault counters instead of a context's configuration.

A full cocotb regression exercising every scenario described above (configuration, PASS/EARLY/
TIMEOUT classification including boundary cases, multi-context arbitration under both policies,
and the near-miss diagnostic) is included in `test/test.py` and runs automatically via CI on
every commit.

## External hardware

None. This design only uses the standard Tiny Tapeout dedicated and bidirectional I/O pins.


