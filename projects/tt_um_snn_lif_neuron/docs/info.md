# Tiny Tapeout SNN Heart Monitor

## How it works

This design is a compact spiking neural network (SNN) heart-beat classifier for Tiny Tapeout.

1. A 12-bit ADC sample is presented on `ui_in[7:0]` + `uio_in[3:0]`.
2. Pulsing `uio_in[4]` (`sample_en`) feeds the sample into:
   - **Heartbeat_Segmenter** — detects an R-peak (>= 2200) and opens a fixed evaluation window.
   - **Delta_Encoder** — emits gentle vs steep up/down spikes plus direction-flip events.
3. A **5-neuron Parallel_SNN_Matrix** (one neuron per AAMI-style class) integrates those spikes with class-specific weights and leaks.
4. **MultiClass_SNN_Voter** picks the winning class when the window ends.
5. An alarm counter asserts `alarm` only after **3 consecutive** anomaly classifications (classes 1, 2, or 4). Classes 0 (Normal) and 3 (Fusion) clear the streak.

| Class | Meaning | Typical stimulus |
|---|---|---|
| 0 | Normal | Gentle rising slope |
| 1 | Supra-ventricular | Gentle falling slope |
| 2 | Ventricular | Steep rising slope |
| 3 | Fusion | Steep falling slope |
| 4 | Unknown / noise | Zigzag / alternating edges |

## How to test

From the `test/` directory:

```sh
pip install -r requirements.txt
make -B
```

The cocotb suite checks:

- gentle rise → class 0
- steep rise → class 2
- zigzag → class 4
- alarm quiet for 2 ventricular beats, fires on the 3rd, clears on Normal

On hardware / FPGA:

1. Hold baseline ADC ~150.
2. Drive an R-peak (>= 2200), then a morphology slope for ~100 `sample_en` pulses.
3. Read `uo_out[2:0]` when `uo_out[3]` (`diag_valid`) pulses.
4. Observe `uo_out[4]` (`alarm`) after three consecutive anomaly beats.

## External hardware

- Optional: external ADC or microcontroller streaming 12-bit samples into the pin-mapped ADC bus, with a sample strobe on `uio[4]`.
- Optional: LED on `uo[4]` for the anomaly alarm.
