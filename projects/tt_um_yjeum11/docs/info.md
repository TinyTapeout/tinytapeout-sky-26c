## How it works

Dual-Tone Multi Frequency (DTMF) signaling is a way of signaling between telephone equipment which uses two different frequencies to indicate which key has been pressed.
You have probably heard DTMF in action when pressing the keypad buttons on a telephone. The tone which gets played is precisely the DTMF encoding of the key which you have pressed.

![DTMF keypad](./keypad.png)

The circuit works by implementing a discrete Fourier transform (DFT) using the Goertzel algorithm, which is standard for this use case.

The DFT makes it possible for us to determine which of the DTMF frequencies are active in the incoming signal.
The Goertzel algorithm makes it very simple to calculate DFT terms for a fixed target frequency using only a few multiplications and additions.

We can detect which DTMF signal is being transmitted by calculating the power of each DTMF frequency in the input signal and determining which frequencies are the loudest. 
This will give us the detected row and column, and we can find out which key was pressed from the keypad shown above.

## How to test

The chip takes unsigned 8-bit samples centered at 128 through a ready-valid handshake. When the chip signals that it is ready for a new sample, it will wait until the `sample_valid` signal is asserted, then latch the value in `ui_in` as the new sample.

![ready-valid handshake waveform diagram](./readyvalid.png)

After feeding in 1024 samples, the chip will assert `valid`. Verify that the number outputted is the same as what is expected from the audio file.
