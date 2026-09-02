<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project streams in a 20 byte IPv4 header one byte per clock cycle and decides whether to allow or drop the packet. It checks the header for errors, verifies the checksum, and identifies the protocol as TCP, UDP, or ICMP. After the final byte it outputs its decision based on whether the header is valid, has a valid checksum, and doesn't match the blocked protocol. Which protocol is blocked can be configured (ICMP by default).

## How to test

Drive ui_in with the bytes of a 20 byte IPv4 header one byte per clock cycle and hold uio_in[0] (data valid) high throughout. Pulse uio_in[1] (packet start) high on the first byte. After the 20th byte, uo_out reports the result: allow/drop, done, malformed, checksum valid, and protocol type (TCP/UDP/ICMP). To block a different protocol, pulse uio_in[2] (configuration load) with the desired protocol number on ui_in (6 for TCP, 17 for UDP, and 1 for ICMP). A full testbench is in test/test.py.


## External hardware

None.
