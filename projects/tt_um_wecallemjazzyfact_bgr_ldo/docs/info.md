<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design integrates a high-precision **Bandgap Reference (BGR)** and a high-performance **Low-Dropout (LDO) Regulator** implemented in the SkyWater Sky130A 130nm CMOS process.

### 1. Bandgap Reference (BGR)
- **Topology**: Banba current-mode architecture generating a temperature-compensated reference voltage (~1.20 V).
- **Core Components**: PNP vertical substrate BJT pairs ($Q_1, Q_2$), current mirrors, and matched high-sheet poly resistors.
- **Trimming**: 4-bit binary-weighted resistor trim network (`ui_in[3:0]`) allowing post-silicon tuning of the reference output voltage to compensate for process variations.
- **Output**: Reference voltage is brought out to analog pin `ua[1]` (`VREF_LOW`).

### 2. Low-Dropout Regulator (LDO)
- **Input Supply**: 3.3 V high-voltage analog rail (`VAPWR`).
- **Regulated Output**: 1.8 V target output on analog pin `ua[0]` (`VDDC`).
- **Error Amplifier (EA)**: Folded-Cascode topology powered from `VAPWR` (3.3 V) for maximum gate overdrive and wide output swing.
- **Pass Transistor**: Sized PMOS power device optimized for low dropout voltage and wide load current range.
- **Diagnostics**: Integrated ring oscillator and frequency divider core for on-chip activity monitoring via digital output `uo[0]`.

---

## How to test

### Required Supplies & Power Up Sequence
1. Connect **`VGND`** to Ground (0 V).
2. Apply **`VAPWR` = 3.3 V** (Analog 3.3 V power rail).
3. Apply **`VDPWR` = 1.8 V** (Digital 1.8 V power rail).

### Pin Mapping & Operation

| Pin | Direction | Signal | Function |
| :--- | :---: | :--- | :--- |
| **`ua[0]`** | Analog Out | `VDDC` | Regulated 1.8 V LDO Output |
| **`ua[1]`** | Analog Out | `VREF_LOW` | 1.20 V Bandgap Reference Output |
| **`ui[3:0]`** | Digital In | `trim[3:0]` | 4-bit BGR Resistor Trim (`0000` = default nominal) |
| **`ui[4]`** | Digital In | `snk_en` | Current Sink Enable (Active High) |
| **`ui[5]`** | Digital In | `ro_en` | Ring Oscillator Test Enable (Active High) |
| **`uo[0]`** | Digital Out | `div_out` | Divided Ring Oscillator Clock Output |

### Measurement Steps
1. Measure **`ua[1]`** (`VREF_LOW`) using a high-impedance digital multimeter (DMM). Verify reference voltage is nominally ~1.20 V.
2. Sweep digital trim bits on **`ui[3:0]`** to observe voltage trimming range.
3. Measure **`ua[0]`** (`VDDC`) with a DMM or oscilloscope. Verify output voltage stabilizes at 1.80 V.
4. Set **`ui[5]` = 1** to enable the diagnostic ring oscillator; measure the output frequency on **`uo[0]`** using a frequency counter or oscilloscope.

---

## External hardware

- Regulated dual DC Power Supply (3.3 V and 1.8 V).
- High-impedance Digital Multimeter (DMM) for DC voltage verification.
- Digital Storage Oscilloscope (DSO) for transient and noise measurements.
- TinyTapeout Demo Board or carrier board.
