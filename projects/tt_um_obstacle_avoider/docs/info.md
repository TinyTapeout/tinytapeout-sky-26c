<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This chip implements a 3-state finite state machine for obstacle avoidance.
It reads two sensor inputs (obstacle detected, too close) and transitions
between FORWARD, TURNING, and STOPPED states. State is stored in a 2-bit
register updated on each clock rising edge. Each output pin corresponds
directly to one active state.

## How to test

Apply clock signal to clk pin. Set ui[0] HIGH to simulate an obstacle in
range — chip transitions from FORWARD to TURNING. Set ui[1] HIGH to
simulate a dangerously close obstacle chip transitions to STOPPED
regardless of current state. Pull both LOW to return to FORWARD. Monitor
uo[0], uo[1], uo[2] for current state only one will be HIGH at a time.
