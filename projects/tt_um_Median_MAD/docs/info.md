## Credits
We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance. 
Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

## Streaming Median-MAD Estimator
An ultra-low-area, zero-RAM statistical co-processor implemented in Verilog. The design tracks baseline and volatility to classify time-series anomalies like drift, glitches, and stuck sensors in real-time.

## How it works
The sentinel receives an 8-bit input data stream through ui_in[7:0].

The design combines a streaming median and MAD (Median Absolute Deviation) tracker with a Temporal Persistence Engine. It operates entirely without memory buffers, utilizing continuous digital feedback loops to distinguish between transient outliers and persistent baseline shifts.

The dynamically tracked baseline is output through uo_out[7:0], while the winning anomaly class (event code) is indicated by uio_out[2:0]. The wake signal on uio_out[3] indicates that a statistically significant event has occurred.

## How to test
Apply an 8-bit signal to the input pins (ui_in). Set configuration pins uio_in[7:6] to 0.

The classification code is output on uio_out[2:0]:

- Normal signal: outputs 000.
- Inject a 1-cycle spike: outputs 001 (Glitch).
- Inject a permanent baseline jump: outputs 010 (Shift).
- Apply a slowly increasing ramp: outputs 110 (Drift).
- Hold the exact same value for 16 cycles: outputs 111 (Stuck Sensor).
