<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a digital audio playback controller that streams 8-bit PCM audio samples from an external QSPI Flash memory (such as a W25Qxx series chip) and outputs them using a Pulse Width Modulation (PWM) audio driver.

1. **QSPI Flash Controller (`EF_QSPI_XIP_CTRL`):**
   * **Initialization**: On reset, the controller executes a software reset sequence (`0x66`, `0x99`) to ensure the flash is in standard 1-bit SPI mode.
   * **Data Fetching**: It uses the **Fast Read Quad I/O (`0xEB`)** instruction to fetch audio data in 8-byte (64-bit) chunks.
2. **Playback Buffer & Controller (`playback_ctrl`):**
   * The fetched 16 bytes of data are loaded into a buffer.
   * Based on the speed control inputs, the buffer plays back the 8-bit PCM samples sequentially and triggers the QSPI controller to fetch the next line once the buffer is depleted.
   * **Speed Control (`ui_in[1:0]`):**
     * `00` $\rightarrow$ **0.5x speed** (repeats each sample twice).
     * `01` $\rightarrow$ **1x speed** (normal playback).
     * `10` $\rightarrow$ **1.5x speed** (alternates between playing sample normally and skipping every 2nd sample).
     * `11` $\rightarrow$ **2x speed** (skips every other sample).
3. **Audio Output (`pwm`):**
   * The 8-bit PCM samples are sent to a high-frequency PWM generator.
   * The PWM output is driven onto the dedicated output pin `uo_out[7]` and bidirectional pin `uio_out[7]`.

---

## How to test

### 1. Simulation Testing
You can run the provided Cocotb test bench locally using `make` in the `test/` directory. The test simulates:
* An external QSPI flash loaded with a sawtooth audio waveform.
* Real-time playback speed variations and assertion checks on read request generations.

### 2. Physical Hardware Testing
1. Program an external QSPI flash memory chip with raw 8-bit PCM audio data (uncompressed audio samples).
2. Wire up the QSPI Flash to the bidirectional IO pins of the Tiny Tapeout board (see Pinout below).
3. Select the desired playback speed using the `ui_in[1:0]` inputs:
   * `ui_in[1:0] = 2'b01` for normal speed.
4. Apply a system clock (up to 50 MHz).
5. Capture or listen to the output at `uo_out[7]` or `uio_out[7]`. Since the output is digital PWM, pass the signal through a low-pass filter (see External Hardware) before feeding it to an audio amplifier or speaker.

---

## External hardware

List external hardware used in your project (see [Tiny Tapeout Pinout Specs](https://tinytapeout.com/specs/pinouts/))
1. QSPI Flash
2. TT Audio Pmod
