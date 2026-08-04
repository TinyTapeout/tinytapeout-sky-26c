## How it works

This is an ECC-protected 32-bit register bank (4 registers) controlled over housekeeping SPI. The core module, `regfile_ecc`, stores each 32-bit word along with 7 SEC-DED checkbits, so it can detect and correct single-bit errors and flag double-bit errors on read. `regfile_ecc_hk` wraps this with a housekeeping SPI interface, exposing a write address, write data, error-injection masks, a read address, read data, and error status over SPI. The masks let you flip bits in the stored data or checkbits to test that the ECC logic actually catches and corrects them. The top module connects this SPI interface to the TinyTapeout pins: 3 input pins for SPI clock, data-in, and chip-select, and 1 bidirectional pin for SPI data-out.

## How to test

Send a normal SPI write over `ui_in[0:2]` to select a register (0-3) and write a 32-bit value into it, then read it back over `uio_out[0]` by selecting the same register address and check it matches. To test the ECC part, set the error masks to flip bits before a read, and check the register still returns the right data and correctly reports the error type.

## External hardware

None, just a normal SPI controller connected to the pins above.
