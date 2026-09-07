<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The communotron is a prototype I2C to SPI translator. It only operates in one direction (I2C to SPI). Four pre-programmed addresses are baked into the device 0x41 to 0x44. Sending a I2C message to an address causes the respective chip select pin to activate and the data portion of the I2C message is passed through to the SPI bus. I2C ACK bits are stripped out of the SPI datastream by stalling the clock during each ACK. The device detects I2C stops though this version is finicky on resetting so for more reliable operation it is reccomended to hold reset low for at least two CLK cycles between transmissions. The design was simulated using a 100KHz I2C clock and a 400KHz Chip clock. Seperate pins are used for data input and acking to avoid use of the bi-directional pins.

## How to test

1. Connect SPI PICO, SPI CLK, and SPI Chip Select 1 to a Oscilloscope
2. Connect SDA IN and SDA OUT to a I2C SDA line
3. Connect SCL to a I2C SCL line
4. Transmit a I2C write message to address 0x41
5. The data portion of the message should show in the Oscilloscope capture

## External hardware

Possibly external drivers will be needed to safely use this on a I2C bus. No intentionally required external hardware is required.
