# Hardware Audio Tempo Detector — Interface

## How it works

The chip receives a stream of 8-bit unsigned audio amplitude samples (one
per `sample_valid` pulse) and outputs a live BPM estimate, entirely in
hardware:

1. **Onset Detector** — tracks a slow-moving envelope of the signal using
   a shift-based single-pole IIR filter (no multiplier: the envelope
   moves 1/16th of the way toward each new sample). A "beat onset" is
   flagged the instant a sample jumps more than `ONSET_THRESHOLD` (20)
   above that envelope. A 5-sample refractory window stops one loud beat
   from being counted more than once.

2. **Interval Counter** — counts samples between consecutive onsets. If
   no onset arrives for 1023 samples, the counter saturates and raises
   `overflow_flag` instead of wrapping (silence / very slow tempo).

3. **Tempo Estimator** — keeps the last 4 measured intervals in a shift
   register. Once 4 are collected, it averages them (a free `>> 2`, since
   4 is a power of two) and checks how far apart the max and min are:
   tightly clustered intervals raise `confidence` and `tempo_locked`;
   scattered ones don't. An interval close to the 1023-sample ceiling
   (a long gap) is treated as "song changed" and discards the history
   rather than corrupting the average.

4. **BPM Divider** — converts the averaged interval into BPM using
   `bpm = 6000 / interval_samples` (equivalent to `60 * assumed 100 Hz
   sample rate / interval`), via a small bit-serial restoring divider —
   13 cycles, one dividend bit consumed per cycle, no combinational
   divider needed.

5. **Result Latch** — registers every output on the clock so pin values
   are always glitch-free; `bpm_estimate` only updates when the divider
   finishes.

All logic is either combinational comparators/adders or simple registered
counters and shift registers — the only iterative element is the small
13-cycle divider.

## Pin mapping

| Pin | Direction | Signal | Description |
|---|---|---|---|
| `ui_in[7:0]` | in | `audio_sample` | Streaming unsigned 8-bit amplitude sample |
| `uio_in[0]` | in | `sample_valid` | Strobe: a new `audio_sample` is present this cycle |
| `uio_in[1]` | in | `frame_reset` | Restart tempo tracking (new track/song) |
| `uio_in[7:2]` | in | — | Unused, tri-stated |
| `uo_out[7:0]` | out | `bpm_estimate` | Latched BPM estimate (0-255, clamped) |
| `uio_out[2]` | out | `beat_pulse` | One-cycle pulse on each detected beat |
| `uio_out[3]` | out | `tempo_locked` | High once recent intervals are stable |
| `uio_out[4]` | out | `onset_active` | Raw pre-refractory onset flag (debug/scope) |
| `uio_out[5]` | out | `overflow_flag` | No beat seen for a long time (silence) |
| `uio_out[7:6]` | out | `confidence[1:0]` | 2-bit stability score, `11` = tightest lock |

## Assumptions & limits

- Assumes audio amplitude samples arrive at roughly **100 Hz** (a
  pre-processing stage — see [INTEGRATION.md](INTEGRATION.md) — should
  decimate/rectify raw audio down to this envelope rate before feeding
  it in). Changing the sample rate requires resynthesizing with a new
  `NUMERATOR` in `bpm_divider` — see [CALIBRATION.md](CALIBRATION.md).
- Single dominant tempo per stream — polyrhythms or overlapping tracks
  will confuse the interval history.
- `bpm_estimate` is clamped to 255; anything faster than that (a false
  double-trigger, for example) reads as 255 rather than wrapping.
- `ONSET_THRESHOLD` and `REFRACTORY_CYCLES` are synthesis-time
  parameters, not runtime-tunable — see the calibration guide.
