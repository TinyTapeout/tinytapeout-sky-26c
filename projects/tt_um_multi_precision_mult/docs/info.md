## How it works

### Architecture Overview:

This block is a variable-precision unsigned multiplier. It operates in three precision modes determined by external control pins:
1. **2-bit mode** (`mode = 00`): Direct load -> 4-bit product
2. **4-bit mode** (`mode = 01`): Direct load -> 8-bit product
3. **8-bit mode** (`mode = 10`): Two-cycle sequential load -> 16-bit product (two-cycle sequential load)

### Pin Mapping:

All 8 bidirectional pins are set as inputs (`uio_oe = 8'b0000_0000x`)

| Signal Name | Pin Assignment | Direction | Description |
| :---     | :---:    |  :---:   |     ---: |
| `data_in[7:0]`     | `ui_in[7:0]`   |   Input       |  Main 8-bit operand data input   |
| `mode[1:0]`     | `uio_in[1:0]`   |   Input       |  Mode selection between 2-bit, 4-bit, and 8-bit   |
| `load_en`     | `uio_in[2]`   |   Input       |  Cycle control for 8-bit mode   |
| `reserved`     | `uio_in[7:3]`   |   Input       |  Unused inputs   |
| `product_out[7:0]`     | `uo_out[7:0]`   |   Output       |  Product data output   |

### Operand Loading:

#### 2-bit mode:
* Input: Single cycle
    * data_in\[1:0] = Operand A
    * data_in\[3:2] = Operand B
* Output: Single cycle
    * product_out\[3:0] = A * B
    * product_out\[7:4] = zero-padded (`4'b0000`)

#### 4-bit mode:
* Input: Single cycle
    * data_in\[3:0] = Operand A
    * data_in\[7:4] = Operand B
* Output: Single cycle
    * product_out\[7:0] = A * B

#### 8-bit mode:
* Input: Double cycle
    * Cycle 1: (`load_en = 0`)
        * data_in\[7:0] = Operand A
    * Cycle 2: (`load_en = 1`)
        * data_in\[7:0] = Operand B
* Output: Double cycle
    * Cycle 1: (`load_en = 0`)
        * product_out\[7:0] = lower bytes of A * B (`product[7:0]`)
    * Cycle 2: (`load_en = 1`)
        * product_out\[7:0] = higher bytes of A * B (`product[15:8]`)

## How to test

Run the automated Cocotb testbench using `make`:

```bash
cd test
make

## External hardware

N/A
