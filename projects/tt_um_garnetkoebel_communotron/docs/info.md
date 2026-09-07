<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
So you want to communicate?
### The Blurb Version
The communotron is a prototype I2C to SPI translator. It only operates in one direction (I2C to SPI). Four pre-programmed addresses are baked into the device 0x41 to 0x44. Sending a I2C message to an address causes the respective chip select pin to activate and the data portion of the I2C message is passed through to the SPI bus. I2C ACK bits are stripped out of the SPI data stream by stalling the clock during each ACK. The device detects I2C stops though this version is finicky on resetting so for more reliable operation it is reccomended to hold reset low for at least two CLK cycles between transmissions. The design was simulated using a 100KHz I2C clock and a 400KHz Chip clock. Seperate pins are used for data input and acking to avoid use of the bi-directional pins.

### Frame Handler
The Frame Handler is a finite state machine that detects I2C start, stop, and frame end conditions and generates the driving signals needed to control I2C to SPI translation. The `frame_end_oneshot` signal is inverted and used to drive the `sda_out` signal which the Communotron uses to ACK I2C frames.

### Match Unit
The Match Unit is a set of four `i2c_address_detectors` that looks for the pre-programmed addresses during the I2C address frame. The Match Unit's `match_x` outputs drive the `spi_cs_x` output pins. After any address is matched an inhibit signal is generated to prevent attempting to select multiple SPI devices in case the data frame(s) contain a valid address.

### SPI Clock Stall
Some simple logic uses the `frame_end_oneshot` signal and `scl` to stall `spi_clk` during I2C ACKs stripping these bits from the `spi_pico` data stream at the cost of slowing down the effective data rate.

### But Why?
The use case for a Communotron is primarily a learning experience in ASIC design especially since this iteration is uni-directional. It may be useful for interfacing with chips that only feature SPI communication since the Communotron could be placed closer to said devices thereby saving on PCB area by reducing the length of the SPI bus. It could also be used as rudimentary addressed digital outputs though the overhead of that application is much worse than simply using GPIO.

## How to test
1. Connect `clk` to a 400KHz clock source.
2. Connect `rst_n` to a logic high source
3. Connect `spi_pico`, `spi_clk`, and `spi_cs_1` to seperate oscilloscope channels.
4. Connect `sda_in` and `sda_out` together and to a I2C SDA line.
5. Connect `scl` to a I2C SCL line.
6. Connect a I2C controller (or other device that can generate I2C sequences) to the I2C bus.
7. Transmit a I2C Write message to address `0x41`. Observe that after the address is transmitted `spi_cs_1` will go high and the data portion of the message should show on `spi_pico` less the ACK bits which will be stripped out by means of stalling `spi_clk`. 
8. Hold `rst_n` low for at least two `clk` cycles to reset the Communotron.

## External hardware

Possibly external drivers will be needed to safely use this on a I2C bus. No intentionally required external hardware is required.
