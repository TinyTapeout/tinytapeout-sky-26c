## How it works

This project is intended to implement a two-channel reciprocal frequency
counter for measuring asynchronous sensor oscillator signals.

The final design will contain:

- Two independent reciprocal-counter channels
- Programmable measurement gate cycles
- Programmable timeout detection
- Measurement and diagnostic counters
- Sticky timeout and overflow indicators
- An SPI-accessible register interface

The Tiny Tapeout system clock is used as the reference clock. Each asynchronous
frequency input is synchronized before edge detection and measurement.

This initial repository revision implements a temporary 8-bit combinational
adder on `uo_out`. It is being used to validate the Tiny Tapeout submission,
simulation, documentation, and GDS-generation workflow.. The functional
reciprocal-counter RTL and SPI interface will replace the placeholder before
the final tapeout revision is submitted.

## How to test

For the current placeholder revision:

1. Apply the Tiny Tapeout system clock.
2. Assert `rst_n` low for at least ten clock cycles.
3. Release `rst_n`.
4. Apply different values to `ui_in` and `uio_in`.
5. Verify that `uo_out`, `uio_out`, and `uio_oe` remain zero.

The cocotb test is located in `test/test.py` and can be run from the `test`
directory using:

    make clean
    make

The expected result for this revision is:

    TESTS=1 PASS=1 FAIL=0

The final functional revision will include tests for SPI register access,
frequency measurement, timeout handling, overflow handling, reset, and
two-channel operation.

## External hardware

The final design will require:

- A 7.2 MHz reference clock
- Two external digital frequency signals
- An SPI controller connected to SCLK, MOSI, MISO, and active-low chip select

No external hardware is required to run the current placeholder simulation.
