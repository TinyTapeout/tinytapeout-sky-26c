<!--- 
 
This file is used to generate your project datasheet. 
 
--> 

# Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance. 
Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

# OLAF-8: Bounded-Memory Online Adaptive Fuzzy Inference

## Project Overview

OLAF-8 is a compact fully digital fuzzy inference engine designed to demonstrate **online-adaptive fuzzy reasoning within a strictly bounded hardware memory**.

The architecture processes two 4-bit input values and evaluates them using fuzzy membership functions and an eight-entry rule memory. Unlike a conventional fixed-rule fuzzy inference system, OLAF-8 can dynamically modify its rule memory during operation. When the current input is insufficiently represented by the stored rules, the architecture identifies a low-utility rule and replaces it with a rule derived from the current input.

The design combines:

- 4-bit dual-input fuzzy processing
- LOW, MID and HIGH membership regions
- Eight-entry bounded fuzzy rule memory
- Sequential rule evaluation
- MIN-based rule firing strength
- Weighted fuzzy accumulation
- Iterative digital division for defuzzification
- Maximum firing-strength tracking
- Utility-based rule selection
- Online rule admission and replacement

The key design concept is **bounded online adaptation**: the system can update its fuzzy knowledge during operation while maintaining a fixed eight-rule hardware memory. This avoids the need for an external processor or complete hardware reconfiguration for adapting the rule set.

OLAF-8 is implemented entirely in the digital domain and is intended as a compact research demonstrator for exploring adaptive fuzzy inference under strict hardware resource constraints suitable for Tiny Tapeout.

## How it works

OLAF-8 is a compact fully digital fuzzy inference engine with an 8-rule 
bounded rule memory and online rule admission. 

The design accepts two 4-bit input values, `x1` and `x2`. 

For each input transaction:

1. The input values are captured.
2. Membership degrees for LOW, MID and HIGH fuzzy regions are calculated.
3. The eight stored fuzzy rules are evaluated sequentially.
4. Each rule firing strength is calculated using the MIN operation.
5. The weighted fuzzy output is accumulated.
6. The maximum rule firing strength is tracked.
7. An iterative divider calculates the defuzzified output.
8. If the maximum firing strength is below the admission threshold, the 
   least-utility rule is replaced with a rule derived from the current input.
9. Otherwise, the winning rule utility is increased.

The rule memory is permanently bounded to eight entries. This allows online 
adaptation without requiring an external processor or reconfiguration.

The design is intended as a fully digital Tiny Tapeout research demonstrator.

## How to test

The OLAF-8 interface uses the standard Tiny Tapeout pins.

### Inputs

- `ui_in[7:4]` - 4-bit input `x1`
- `ui_in[3:0]` - 4-bit input `x2`
- `uio_in[0]` - Start signal

### Outputs

- `uo_out[3:0]` - 4-bit fuzzy output
- `uo_out[4]` - Done pulse
- `uo_out[5]` - Rule admission/replacement indicator
- `uo_out[6]` - Busy indicator
- `uo_out[7]` - Reserved

To execute a transaction:

1. Wait until `busy` is low.
2. Apply the desired 4-bit `x1` and `x2` values.
3. Generate a one-clock pulse on `uio_in[0]`.
4. Wait until `uo_out[4]` becomes high.
5. Read the fuzzy output from `uo_out[3:0]`.
6. Check `uo_out[5]` to determine whether online rule admission occurred.

The design uses sequential rule evaluation and iterative arithmetic, so the 
output is generated after multiple clock cycles rather than immediately.

## External hardware

No external hardware is required.

OLAF-8 is a fully digital design and is intended to operate using the standard 
Tiny Tapeout clock, reset, input and output interfaces.
