## How it works

Challenge-response PUF: a parallel 16-bit challenge in
(`{ui_in, uio_in}`; a bus value different from the previously measured one
starts the next measurement), a 16-bit response out as 4 hex chars on
`uo[0]` (UART TX, 115200 8N1).

## How to test

Drive a 16-bit challenge on `ui[7:0]` (bits 15..8) and `uio[7:0]`
(bits 7..0), then release reset — the first measurement starts
immediately. Each response is sent as 4 hex chars on `uo[0]`. To run
another measurement, change the challenge bus to a different value; to
re-measure the same challenge, pulse `rst_n`.

## External hardware

A 3.3 V host (RP2040 devkit GPIOs, FPGA, ...) that can drive the 16
challenge inputs and read the UART TX line at 115200 8N1.
