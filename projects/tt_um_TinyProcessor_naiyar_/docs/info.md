<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements an integrated system that executes remote commands sent over a serial UART interface. The core consists of ten functional blocks distributed across two distinct clock domains: a high-speed reference clock domain (REF_CLK) and a standard communication clock domain (UART_CLK).  Incoming data frames received by the UART Receiver are synchronized and pushed to a system controller. This controller parses commands to perform either Register File reads/writes or arithmetic/logic operations using a built-in ALU. To handle the clock-domain crossing smoothly between processing and serialization, data results are buffered through an Asynchronous FIFO before being sent back to the master terminal via the UART Transmitter.

## How to test

## How to test

To test this project:

Clone the repository.
Run the provided testbench:

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
