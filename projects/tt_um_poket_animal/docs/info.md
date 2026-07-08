<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A tiny tamagochi-style pet that lives in a 7-segment display.

The pet gets hungrier over time (full → peckish → hungry → starving, one level
per metabolic tick) and shows its mood on the display:

| Mood                | Display                                             |
|---------------------|-----------------------------------------------------|
| content (hunger 0)  | a single segment chasing around the ring (playing)  |
| peckish (hunger 1)  | `-` (meh)                                           |
| hungry (hunger 2)   | `H` blinking slowly                                 |
| starving (hunger 3) | `F` blinking fast (FEED ME)                         |
| sick                | `b` steady, decimal point blinking                  |
| dead                | `d` steady + decimal point (a single tear)          |
| being petted        | everything flashing (pure joy)                      |

Pressing **feed** (`ui[0]`) removes one hunger level and the decimal point
lights up briefly (nom). Feeding a pet that is already full gives it
indigestion: three surplus snacks make it sick. A sick pet recovers after two
ticks of rest, but feeding it twice more kills it (cause of death: love).
Left starving for two ticks, it starves. Death is sticky — the tear is
permanent — and reincarnation is available via `rst_n`.

Pressing **pet** (`ui[1]`) makes it wiggle happily. A heartbeat on `uio[1]`
blinks faster as hunger grows and stops when dead. The remaining `uio` pins
report status: alive, cause of death, sick, hunger level, wiggle, and a
debug pulse per metabolic tick.

Metabolism and animation are decoupled and both derive from a free-running
prescaler, so the pet lives at pet speed while its face blinks at human speed.
`ui[3:2]` selects the time base (at the recommended 10 MHz clock):

| `ui[3:2]` | Tick      | Use case                                       |
|-----------|-----------|------------------------------------------------|
| `00`      | ~1.9 h    | real pet: feed it at lunch, it survives the workday; ignore it overnight and it dies |
| `01`      | ~27 s     | needy pet (desk toy)                           |
| `10`      | ~0.42 s   | full lifecycle live demo                       |
| `11`      | 64 clocks | simulation                                     |

Metabolism is clock-proportional: halve the clock and it lives twice as long.

## How to test

Connect a common-cathode 7-segment display to `uo_out` (the Tiny Tapeout demo
board already has one). Set the clock to 10 MHz and `ui[3:2]` to `10` (live
demo speed: one hunger tick every ~0.42 s), then reset.

The pet wakes up alive and slightly peckish (`-`). Watch it get hungry (`H`
blinking, then `F` flashing) and press `ui[0]` to feed it — the decimal point
noms. Keep it fed and it plays (a segment chases around the ring). Press
`ui[1]` to pet it and it wiggles. Overfeed it three snacks past full and it
gets sick (`b`); let it rest to recover, or keep feeding to learn about
consequences. Ignore it at maximum hunger and it dies (`d` with a tear).
Reset to reincarnate.

For simulation, the cocotb testbench in `test/` runs the full lifecycle in
turbo mode (`ui[3:2]` = `11`): birth, hunger, feeding, playing, petting,
starvation, reincarnation, overfeeding, recovery, death by love, and the
heartbeat.

## External hardware

A 7-segment display with a decimal point on `uo_out` (segments a–g on
`uo[6:0]`, decimal point on `uo[7]`), such as the one on the Tiny Tapeout
demo board. Two push buttons on `ui[0]` (feed) and `ui[1]` (pet), and two
switches or jumpers on `ui[3:2]` for speed select. Optionally an LED on
`uio[1]` for the heartbeat.
