<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
# Systolic Processing Element

## Overview

This project is a weight-stationary processing element (PE) implementing the core compute primitive of a systolic array neural network accelerator. The design features a 3-stage pipeline: int8 multiply-accumulate, bias addition, and Leaky ReLU activation (β=0.25).

## How it works

**Interface**

The chip communicates through a time-multiplexed 8-bit data bus (ui_in) and a 4-bit control input (uio[0:3]). Three control signals govern data loading: asserting load_weight (uio[0]) captures the value on ui_in into the weight register; asserting load_bias (uio[1]) captures it into the bias register; asserting accumulate (uio[2]) treats ui_in as an activation value and begins computation. A fourth control signal reset_acc (uio[3]) clears the accumulator between independent computations. Two status signals are output: output_valid (uio[4]) goes high exactly 3 clock cycles after an accumulate pulse, indicating the result on uo_out is ready to read; overflow (uio[5]) indicates the output was saturated (clamped) to the int8 range.

This design is implemented in a 3-stage pipeline as follows:

**Stage 1: Multiply-Accumulate**

On each accumulate pulse, the chip multiplies the stationary weight register (int8) by the incoming activation (int8 on ui_in), producing a 16-bit signed product. This product is added to the 16-bit accumulator. The accumulator persists between accumulate pulses, enabling dot products to be accumulated across multiple clock cycles — a 128-input neuron requires 128 accumulate cycles. The accumulator is saturated to int16 range (−32,768 to +32,767) using a 17-bit intermediate sum for overflow detection. The result is latched into the Stage 1 output register on the clock edge.

**Stage 2: Bias Addition**

One cycle after Stage 1, the accumulated MAC result is added to the bias register (int8, sign-extended to 17 bits). The result is saturated to int16 range. Bias allows neurons to activate independently of the dot product magnitude, shifting the activation function threshold. This stage is pipelined separately from Stage 1 to keep each stage's critical combinational path short and allow higher clock frequencies.

**Stage 3: Leaky ReLU Activation and int8 Saturation**

One cycle after Stage 2, the activation function is applied. The sign bit of the 16-bit biased result is tested: if positive, the value passes through unchanged; if negative, it is arithmetically right-shifted by 2 positions (dividing by 4, equivalent to multiplying by β=0.25). This is Leaky ReLU with β=0.25, implemented using only wiring — zero additional gates, accomplished by arithmetic shift. The result is then saturated to int8 range (−128 to +127) before appearing on uo_out. The overflow flag records whether saturation occurred.

**Bit-Width Progression**

Input: 8-bit signed (int8) — weights, biases, activations
Stage 1 Accumulator: 16-bit signed (int16) — MAC running sum
Stage 2 Bias: 16-bit signed (int16) — MAC + bias
Stage 3 Output: 8-bit signed (int8) — final result

## How to test

1. Assert load_weight, drive weight on ui_in → clock one edge → release
2. Assert load_bias, drive bias on ui_in → clock one edge → release
3. Assert reset_acc → clock one edge → release
4. Assert accumulate, drive activation on ui_in → clock one edge → release
5. Wait 3 clock cycles
6. Read uo_out when output_valid (uio[4]) is HIGH
Repeat from step 3 for each new computation.
Repeat from step 1 only when weight or bias changes.

## External hardware
Terasic MAX10 DE10-Lite was used in prototyping and testing this design will also be used for further testing.
