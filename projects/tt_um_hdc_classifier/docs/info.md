## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.
Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

# HDC Classifier

An 8-bit Hyperdimensional Computing (HDC) classifier implemented in Verilog.
The design compares an input vector with two class prototypes and determines
the closest matching class using Hamming distance.

## How it works

The classifier receives an 8-bit input data vector through `ui[7:0]`.

The input vector is compared with two class prototypes. The design calculates
the Hamming distance between the input data and each prototype. The class with
the smaller distance is selected as the winner.

The calculated distance is provided through `uo[5:0]`, while the winning class
is indicated by `uo[6]`. The `DONE` signal on `uo[7]` indicates that the
classification operation is complete.

### Input signals

| Pin      | Signal      | Description                         |
|----------|-------------|-------------------------------------|
| `ui[7:0]`| `DATA[7:0]` | 8-bit input data                    |
| `uio[0]` | `MODE`      | Operating mode                      |
| `uio[1]` | `CLASS_SEL` | Class selection                     |
| `uio[2]` | `VALID`     | Indicates valid input               |
| `uio[3]` | `START`     | Starts the classification operation |

### Output signals

| Pin       | Signal      | Description                          |
|-----------|-------------|--------------------------------------|
| `uo[5:0]` | `DIST[5:0]` | Calculated Hamming distance          |  
| `uo[6]`   | `WINNER`    | Selected class                       |
| `uo[7]`   | `DONE`      | Indicates classification is complete |

## How to test

1. Reset the design using `rst_n`.
2. Apply the 8-bit input data on `ui[7:0]`.
3. Configure `MODE` and `CLASS_SEL` as required.
4. Set `VALID` high to indicate valid input data.
5. Assert `START` to begin the classification operation.
6. Wait until `DONE` becomes high.
7. Read the selected class from `WINNER`.
8. Read the calculated Hamming distance from `DIST[5:0]`.

## External hardware

No external hardware is required.

The design uses the standard Tiny Tapeout clock and reset signals.
