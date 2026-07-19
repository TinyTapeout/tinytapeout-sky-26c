<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A hardware ASCII-to-Morse converter. The host places a 7-bit ASCII code on
`ui[6:0]` and strobes `load` (`ui[7]`); the chip looks the character up in an
on-chip ROM and serializes the ITU-R M.1677-1 element sequence on the `key`
line (`uo[0]`) at a selectable, human-perceptible speed. The chip owns all
Morse timing; the host only feeds bytes and respects the `ready` flag, so a
simple polling loop in MicroPython can stream arbitrary-length text without
dropping characters.

The Morse stream is presented three ways simultaneously:

1. **Key line** (`uo[0]`): raw on/off keying for a scope, LED, or relay.
2. **Audio** (`uo[7]`): the key line gated with a square-wave sidetone,
   encoded as 5-bit PWM at f_clk/32 (~312 kHz at 10 MHz) for the TT Audio
   Pmod. Silence is 50% duty, so the Pmod's filter output rests at mid-rail;
   keying is aligned to tone zero crossings to suppress clicks.
3. **Visual**: `uo[7:0]` is also the demoboard's 7-segment bus, so the
   status bits light segments in sync with the transmitted code (segment *a*
   flashes with `key`). Setting `display_en` = 0 blanks the fast-toggling
   diagnostic segments (`element`, `tick`); `key`, the handshake lines and the
   audio are unaffected so the host protocol keeps working.

**Character set:** letters `A`-`Z` (lowercase folded to uppercase), digits
`0`-`9`, and the punctuation `. , ? ' ! / ( ) & : ; = + - _ " @`. An ASCII
space emits a word gap. Anything else asserts `invalid`, produces no key-down,
and is discarded; `ready` returns after one dit-time and `invalid` clears on
the next successful load. (`$` is excluded: its seven-element pattern does not
fit the 6-bit ROM field.)

**Timing** (all durations are multiples of the dit-time T; `PARIS ` is
exactly 50 T):

| Interval            | Duration | Key state |
|---------------------|----------|-----------|
| Dit                 | 1 T      | down      |
| Dah                 | 3 T      | down      |
| Intra-character gap | 1 T      | up        |
| Inter-character gap | 3 T      | up        |
| Word gap (space)    | 7 T      | up        |

Gaps are non-overlapping: the inter-character gap replaces the final
intra-character gap, and a word gap replaces the inter-character gap (a space
between letters gives exactly 7 T, not 10 T).

**Speed selection** (`wpm_sel`, dit-time = 2^N clocks; values at 10 MHz):

| `wpm_sel` | Divider | Dit-time | Approx. WPM |
|-----------|---------|----------|-------------|
| `000`     | 2^21    | ~210 ms  | ~5.7 (default) |
| `001`     | 2^20    | ~105 ms  | ~11.4       |
| `010`     | 2^19    | ~52 ms   | ~23         |
| `011`     | 2^18    | ~26 ms   | ~46         |
| `100`     | 2^16    | ~6.6 ms  | ~183        |
| `101`     | 2^12    | ~0.41 ms | scope work  |
| `110`     | 2^8     | ~26 µs   | hardware test |
| `111`     | 2^4     | 1.6 µs   | simulation turbo |

Timing is strictly clock-proportional. Speed and configuration changes take
effect only at character boundaries, so a mid-character change cannot produce
a malformed element.

**Handshake:** on a rising edge of `load` with `ready` high the character is
captured and `ready` falls. `ready` rises again during the trailing 3 T
inter-character gap, giving the host a full 3 T window to supply the next
character, so a continuous stream has no inserted pauses. A `load` edge while
`ready` is low is ignored. `char_done` pulses for one dit-time when a
character (including its gap) completes. `load` is two-flop synchronized;
pulses shorter than two clock periods are not guaranteed to register.

With `auto_repeat` = 1 the last character is re-sent indefinitely with
correct 3 T gaps until `load` is strobed again or the design is reset.

## How to test

The design is meant to be driven from the demoboard's RP2350 running
MicroPython with the ttboard SDK (`mode = ASIC_RP_CONTROL`, since the RP2
drives the project inputs and the configuration byte on `uio`). A suitable
`config.ini` section:

```ini
[tt_um_morse_converter]
mode = ASIC_RP_CONTROL
clock_frequency = 10e6
uio_oe_pico = 0b11111111   ; RP2 drives all config pins
uio_in = 0b00001000        ; wpm_sel=000 (slowest), audio_en=1, tone=600Hz
ui_in = 0
```

Copy `test/morse_demo.py` to the demoboard and run the canonical bring-up
check:

```python
import morse_demo
morse_demo.demo()   # sends "HELLO WORLD" at ~5.7 WPM
```

or drive it by hand:

```python
from ttboard.demoboard import DemoBoard
from morse_demo import MorseSender

tt = DemoBoard.get()
tt.shuttle.tt_um_morse_converter.enable()
tt.clock_project_PWM(10e6)
tt.uio_oe_pico.value = 0xFF

sender = MorseSender(tt)
sender.configure(wpm_sel=0, audio=True, tone=0)
sender.send("CQ CQ CQ DE TT")
```

Confirm the code is audible on the Audio Pmod and visible as pulses on
`uo[0]` (segment *a* of the 7-segment display). Verify by ear against a Morse
reference, or capture `uo[0]` on a scope and measure the dit-time against the
speed table above.

The cocotb testbench (`test/test.py`) covers the reset state, every element
class, gap and PARIS timing, case folding, the handshake back-pressure rules,
streaming, speed scaling, audio gating, reset during transmission, and
auto-repeat. It interacts with the design only through the pins, so it is
portable to microcotb for hardware-in-the-loop runs.

## External hardware

- [TT Audio Pmod](https://github.com/MichaelBell/tt-audio-pmod) on the output
  Pmod header; it takes the PWM sidetone on `uo[7]` and drives a piezo or
  headphone jack.
- Fallback without the Pmod: an LED (demoboard 7-segment already works) on
  `uo[0]`, or a piezo buzzer on `uo[0]` through a series resistor: a
  click-per-element rather than a tone, but the rhythm is fully audible.

### Pinout

| Pin       | Dir | Name          | Description                                        |
|-----------|-----|---------------|----------------------------------------------------|
| `ui[6:0]` | in  | `char_in`     | 7-bit ASCII code, sampled on the rising edge of `load` |
| `ui[7]`   | in  | `load`        | Load strobe, edge-detected, accepted when `ready` is high |
| `uo[0]`   | out | `key`         | Morse key line: high = mark                        |
| `uo[1]`   | out | `ready`       | High when a new character may be loaded            |
| `uo[2]`   | out | `busy`        | High while serializing, including the trailing gap |
| `uo[3]`   | out | `element`     | High during a dah, low during a dit (valid while `key` is high) |
| `uo[4]`   | out | `char_done`   | One dit-time pulse at the end of each character    |
| `uo[5]`   | out | `invalid`     | Latched for characters with no Morse encoding      |
| `uo[6]`   | out | `tick`        | One-clock pulse at each dit boundary               |
| `uo[7]`   | out | `audio_pwm`   | PWM sidetone for the TT Audio Pmod                 |
| `uio[2:0]`| in  | `wpm_sel`     | Speed select (see table)                           |
| `uio[3]`  | in  | `audio_en`    | 1 = sidetone enabled                               |
| `uio[5:4]`| in  | `tone_sel`    | Sidetone pitch: 600 / 800 / 1000 / 440 Hz          |
| `uio[6]`  | in  | `display_en`  | 0 = blank the `element` and `tick` segments        |
| `uio[7]`  | in  | `auto_repeat` | 1 = re-send the last character indefinitely        |

The design never drives the bidirectional pins (`uio_oe` = 0).
