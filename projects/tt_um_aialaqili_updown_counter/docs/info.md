## How it works

This is a 4-bit synchronous up/down counter built around a single always block driving a 4-bit register. ui_in[1] is the count enable: when high, the counter advances on every clock edge; when low, the count holds its current value. ui_in[0] sets the direction: high counts up, low counts down. The count wraps at both ends (15 down to 0 wraps to 15, and 15 up wraps to 0, standard unsigned 4-bit rollover). rst_n is an active-low synchronous reset that clears the count to zero on the next clock edge. The 4-bit count value is driven straight out on uo_out[3:0], with uo_out[7:4] tied to zero. This was built as a first Tiny Tapeout submission, keeping the design intentionally simple to maximize the odds of a clean first tapeout.

## How to test

Hold rst_n low for a few clock cycles to reset the counter to 0. Set ui_in[1] high to enable counting, and ui_in[0] high to count up or low to count down. Watch uo_out[3:0] increment or decrement by one on every clock cycle. Set ui_in[1] low at any time to freeze the count at its current value, then raise it again to resume from where it left off. A cocotb testbench covering reset, count up, hold, count down, underflow wraparound, and a second reset is included in test/test.py.

## External hardware

None required. uo_out[3:0] can optionally be watched on LEDs or a logic analyzer connected to the demo board's output pins.
