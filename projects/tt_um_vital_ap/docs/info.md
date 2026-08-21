## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

## How it works

VITAL-AP is an adaptive register designed for low-power image and video processing.

It receives an 8-bit pixel through `ui_in` and compares the current pixel with previously stored pixel information. The design considers:

- Pixel value
- Transition magnitude
- Temporal behavior
- Edge activity
- Motion activity

Based on these conditions, VITAL-AP decides whether to **update** the register or **hold** the previous value. Small or unnecessary transitions can therefore be suppressed, reducing switching activity and potentially lowering dynamic power.

A force-update control is also provided to allow the current pixel to be stored when required.

## How to test

The design can be tested using the provided Verilog testbench and Cocotb test.

The test covers:

- Reset and enable operation
- Static pixel values
- Small pixel variations
- Large transitions
- Temporal pixel sequences
- Motion sequences
- Force-update mode

Run the test using the Tiny Tapeout test environment. The generated `tb.fst` waveform can be viewed using GTKWave.

Important signals to observe include:

`clk`, `rst_n`, `ena`, `ui_in`, `uo_out`, `uio_in`, and `uio_out`.
