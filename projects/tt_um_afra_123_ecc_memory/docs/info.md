## Credits 
We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance. Special thanks to Dr. H V Ravish Aradhya (HoD - ECE), Dr. K R Usha Rani (Associate Dean - PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission. 

# How it works

The Runtime-Reconfigurable ECC Memory is a small memory system that supports four selectable error-control modes:

- `00` – OFF: ECC is disabled and data is stored directly.
- `01` – PARITY: A parity bit is generated for error detection.
- `10` – HAMMING: Hamming error-correcting code is used for single-bit error correction.
- `11` – SECDED: Single Error Correction and Double Error Detection is enabled.

The ECC mode is selected at runtime through the `ui_in[1:0]` inputs.

The design consists of a memory array, mode-aware ECC encoder, and mode-aware ECC decoder. During a write operation, the input data is encoded according to the selected mode and stored in memory. During a read operation, the stored codeword is decoded according to the selected mode.

For Hamming and SECDED modes, the decoder calculates the syndrome to identify a single-bit error and corrects it when possible. In SECDED mode, an additional overall parity bit allows the circuit to detect double-bit errors.

The design provides:
- 8-bit data input and output
- 3-bit address for 8 memory locations
- Runtime selection between four ECC modes
- Single-bit error detection/correction
- Double-bit error detection in SECDED mode
- Synchronous write operation
- Active-low reset

# How to test

The design is controlled using the Tiny Tapeout input and output pins.

## Inputs

| Pin | Function |
|-----|----------|
| `ui[1:0]` | ECC mode selection |
| `ui[2]` | Write enable |
| `ui[5:3]` | Memory address |
| `ui[7:6]` | Write data bits `[1:0]` |
| `uio[7:2]` | Write data bits `[7:2]` |
| `clk` | Clock |
| `rst_n` | Active-low reset |

## Outputs

| Pin | Function |
|-----|----------|
| `uo[7:0]` | 8-bit read data |
| `uio[0]` | Single-bit error indicator |
| `uio[1]` | Double-bit error indicator |

## ECC mode selection

Set `ui[1:0]` to:

| `ui[1:0]` | Mode |
|-----------|------|
| `00` | OFF |
| `01` | PARITY |
| `10` | HAMMING |
| `11` | SECDED |

To write data:

1. Apply the desired ECC mode.
2. Apply the 3-bit memory address.
3. Apply the 8-bit write data.
4. Set `ui[2]` (`WRITE_ENABLE`) to `1`.
5. Apply a rising clock edge.
6. Set `WRITE_ENABLE` back to `0`.
7. Apply another rising clock edge to observe the stored data at `uo[7:0]`.

For normal operation, the read data should match the originally written 8-bit data.

In Hamming mode, a single-bit error is corrected and `uio[0]` is asserted.

In SECDED mode, a single-bit error is corrected and indicated by `uio[0]`, while a double-bit error is detected and indicated by `uio[1]`.

# External hardware

No external hardware is required.

The project can be tested using the Tiny Tapeout digital interface and clock/reset signals. The design does not require an external PMOD, LED display, sensor, or other peripheral hardware.


