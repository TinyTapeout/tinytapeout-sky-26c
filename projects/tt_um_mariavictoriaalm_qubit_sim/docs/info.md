
## How it works

tt-qubit-sim is a small digital "toy" simulation of qubit-like behaviour, built entirely from
ordinary digital logic (registers, comparators and LFSRs) — it does not perform real quantum
computation, it only imitates the classic textbook example of a qubit and entanglement using
probabilistic digital logic.

## How to test

The design was prototyped in Wokwi using a DIP switch (inputs), a push-button (reset), a
clock generator, and four LEDs (outputs).

Driving the inputs as digital switches:
- `ui_in[0]` (`in_q1`): initial state of qubit 1 before reset.
- `ui_in[1]` (`in_q2`): initial state of qubit 2 before reset.
- `ui_in[2]` (`apply_h`): Hadamard gate.
- `ui_in[3]` (`measure`): collapse/measure the qubit(s).

The outputs are:
- `uo_out[0]`/`uo_out[1]` (qubit 1 / qubit 2 results)
- `uo_out[2]`/`uo_out[3]` (entangled pair results) 

Three independent 8-bit maximal-length LFSRs (taps 8,6,5,4; period 255; seeded with fixed values)
provide the pseudo-random numbers used for the probabilistic collapse — this is a simplified
stand-in for real quantum randomness.








 
