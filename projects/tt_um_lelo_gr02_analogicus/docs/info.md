- **Repository:** [https://github.com/analogicus/lelo_gr02_sky130a](https://github.com/analogicus/lelo_gr02_sky130a)
- **Documentation:** [https://analogicus.github.io/lelo_gr02_sky130a](https://analogicus.github.io/lelo_gr02_sky130a)

# Who
Ardit Uka, Jonas Hilbich, Iver Abrahamsen & Simen Eilevstjønn

# Why

Creating this module is part of the Analog Integrated Circuits course at NTNU.
The goal is to create a basic temperature sensor and get it to tape out in the TinyTapeout project.
Along the way we will learn about the analog design and layout required and gain practical experience working with the tools and understanding the design workflow.

# How 
This module was developed through four separate milestones, each building on the results of the previous one. A detailed explanation of each circuit can be found under the Schematic section when generating the docs.

## Milestone 1 - The Bandgap Circuit

The first step of the project involves designing a bandgap reference circuit. The bandgap is a component used for temperature sensing and/or voltage references in integrated circuits. This circuit generates two key outputs:

- V_CTAT (Complementary to Absolute Temperature voltage): This voltage decreases linearly as temperature increases.

- I_PTAT (Proportional to Absolute Temperature current): This current increases linearly with temperature. 

The combination of V_CTAT and I_PTAT allows the system to produce a temperature-dependent signal with a controlled linear relationship. By feeding these outputs into a subsequent oscillator circuit, the temperature-induced changes in voltage and current modulate the oscillator frequency. This frequency can then be measured using a digital counter to accurately determine the temperature of the system

<img width="100%" alt="bandgap_lay_sim_res" src="https://github.com/user-attachments/assets/072a1d89-1f3e-452a-a5b4-fc04a4d48e56" />

The bandgap simulation shows the leakage current, active current, I_PTAT, V_CTAT, as well as the I_PTAT error and V_CTAT error over a temperature range from 0°C to 70°C.

### Observations from the simulation

- **I_PTAT:** Decreases linearly with temperature, with an error between 0–0.15%. It varies from 2.43 µA at 0°C to 2.85 µA at 70°C.

- **V_CTAT:** Decreases linearly with temperature, with an error between 0–0.08%. It varies from 0.76 V at 0°C to 0.61 V at 70°C.

- **Active current:** At 25°C, it is below 100 µA, meeting the specification criteria.

- **Leakage current:** At 25°C, it is below 1 nA, meeting the specification criteria.

### To simulate the bandgap and view plots:

```bash
cd sim/BANDGAP/
make typical
```
This will display plots for I_PTAT, V_CTAT, and their errors.

Optional: If you do not wish to see the plots, open tran.py in the BANDGAP folder and set:

```bash
DO_PLOT = False
```

## Milestone 2 - The Oscillator

The I_PTAT and V_CTAT from Milestone 1 are used to control the frequency of the oscillator clock. The change in frequency caused by the linear variation of I_PTAT and V_CTAT is how the temperature is measured. As the temperature changes, it affects I_PTAT and V_CTAT, which in turn changes the oscillator frequency. This frequency is fed into a counter (developed in Milestone 3). The counter value is then used to determine the temperature of the bandgap reference.

### Observations from the simulation

<img alt="image" src="https://github.com/user-attachments/assets/8de872d9-30c5-47ca-8e9f-52fd3768f36f" />

The figure above is an illustration of the output of the oscillator circuit during transient simulation.

The simulations were run for temperatures -5, 0, 10, 25, 30, 40, 50, 60, 70 and 75 degrees Celsium.
The resulting frequency curve is shown below.

<img alt="image" src="https://github.com/user-attachments/assets/3e684715-bd8f-4d28-9d52-cb631ef35078" />

To quantify the nonlinearity of the output frequencies, a regression fit was performed and the deviations from the straight line frequency relative to the full scale was plotted below.

This shows that the error from the straight line is between 0.5% and 2.5%.

The regression model and the r^2 correlation figure for both the typical, extreme test case and Monte Carlo simulations can be found on the <a href="/lelo_gr02_sky130a/simulations.html">results page</a>.

The same page contains the power usage measurements. Average active current is currently slightly out of spec at 104 μA typical, 146 μA maximum.
The leakage current is currently 19 nA typically, up to 266 nA maximum, way above the 1 nA specification.

The leakage current can possibly be attribtuted to the floating output node. This may be pulled to gnd to possibly reduce leakage. Further optimisations will be performed later.

### To simulate the oscillator alone:

```bash
cd sim/OSCILLATOR
make typical
cicsim wave output_tran/tran_SchGtKttTtVt.raw 
```
In cicsim, select v(osc_temp_1V8) to see the output of the oscillator. 

### To simulate the whole system:

```bash
cd sim/LELO_GR02
make typical
```
## Milestone 3 - The Measurement

With the oscillator from Milestone 2 and the bandgap from Milestone 1 implemented, the next step is to measure the oscillator frequency. The implemented temperature sensor only oscillates while the PWRUP signal remains high (1.8 V). To count the oscillations per system clock cycle, and thus measure the frequency, a circuit that controlls the PWRUP signal is required. This functionality will be implemented in Verilog.

### The Counter (counter.v)

<img alt="image" src="https://github.com/user-attachments/assets/005c436e-d5e1-4795-b4a2-e7224f3a7492" />

First, the clock cycles generated by the oscillator must be counted. To accomplish this, an 8-bit ripple counter is implemented in Verilog. The microarchitecture of the counter is shown above. The counter is parametrized to allow for easy arbitrary widths. It is designed to clamp to the maximum value instead of rolling over. This decision was made to have the sensor indicate overtemperature conditions instead of giving a false sense of security by indicating a low temperature.

The counter receives the oscillation signal from the temperature sensor as its clock input and increments its value by one for each clock cycle. For a given oscillation frequency and PVT (process, voltage, and temperature) variation, the counter will reach a specific number of clock cycles within a defined measurement period.

To reset the counter, a reset signal is applied, which forces the counter value to zero. This reset signal is controlled by the state machine.

You can find the implementation of the counter in `rtl/counter.v` and it's accompanying testbench in `rtl/counter_tb.v`.
Use `make sim_counter` in the `rtl` directory to run the automated tests and check out `sim/LELO_GR02/sensor_tb_sim.vcd` in your waveform viewer of choice to see the waveform produced by the testbench.



### The Finite State Machine (fsm.v)

With the counter implemented as shown above, it is now possible to count the clock cycles from the temperature sensor. To control both the counter and the sensor signal, a finite state machine (FSM) is used. 

#### Module Ports

| Port Type | Name | Description | Connection |
| :--- | :--- | :--- | :--- |
| Input | `clk` | System clock (from Tiny Tapeout). | External signal |
| Input | `rst_n` | Active-low reset signal used to reset the entire FSM. | External signal (User) |
| Input | `start_i` | Starts the temperature measurement. | External signal (User) |
| Input | `cnt_i` | Counter value from the counter module. | Connected to counter's output. |
| Output | `pwrup_osc_o` | Power-up signal used to turn on the analog temperature sensor. | Connected to PWRUP port on analog design. |
| Output | `reset_cnt_o` | Active-high signal that resets the counter. | Connected to counter's reset. |
| Output | `completed_o` | Flag indicating that the measurement is finished and data is ready. | Use as needed. |
| Output | `clk_cycles_o` | Number of counted clock cycles. | Use as needed. |

<img width="100%" alt="image" src="https://github.com/user-attachments/assets/ab44c405-4498-4352-9da3-bdc5143d296c" />


#### State Flow & Behavior

The state machine uses three states:

* **Global Reset:** At any time, pulling rst_n low will asynchronously reset the FSM back to the IDLE state.
* **IDLE:** The FSM rests here by default. It holds the counter in reset (`reset_cnt_o = 1`) and keeps the temperature sensor powered off (`pwrup_osc_o = 0`). It waits here until the user drives the start signal high. After a transistion from CAPTURE, the `clk_cycles_o` contains the last oscialltor count with it's validity indicated by `completed_o` (1 means valid).
* **CNT:** Entered with a high start signal. The counter reset is released (`reset_cnt_o = 0`), and the temperature sensor is powered on (`pwrup_osc_o = 1`). After one clock cycle, it automatically transitions to CAPTURE. The counter counts the osciallations of the temperature sensor.
* **CAPTURE:** The FSM powers down the temperature sensor and propagates the counter value and a `completed_o` signal to the output in the next cycle. After one clock cycle, it automatically transitions back to the IDLE state.

### Sensor (sensor.v)

The FSM and counter are combined in the sensor module. This module contains a reduced set of the in- and outputs as discussed above as well as an input for the oscillator signal (`osc_i`).
The module also features two parameters:
- CNT_WIDTH: Sets the width of the counter in bits (default: 8). This parameter also exists in and is linked to the submodules for the counter and fsm.
- SYNC_START: This decides if a two flip-flop synchronizer is added in the module to synchronize the `start_i` signal into the digial logic's clock domain (default: 0 (false)). If the synchronizer is added, the start signal is delayed by two clock cycles.

## Milestone 4 - The Physical Design

The signal flow in the physical layout is roughly left to right. The layout consists of three main cells with their function explained above:
The bandgap, the oscillator, and digital layout.

## Rules
The following layout rules were applied to ensure the implementation closely matches the schematic:

- **Power rails:** VDD and VSS must be routed with a large width (2 µm) and then distributed to the components. This prevents current loops and avoids connecting component grounds in series, which could lead to uneven current distribution.
- **Metal layer orientation:** Odd-numbered metal layers should be routed vertically, while even-numbered layers should be routed horizontally. This simplifies the layout process and improves consistency.
- **Common-centroid:** Matched circuits like differential pairs and current mirrors must be implemented using a common-centroid layout to minimize mismatch.
- **Trace length:** Interconnects should be kept as short as possible, as longer traces introduce additional parasitic capacitance.
- **Module placement:** For the operational amplifiers, integrate them with the bandgap and oscillator to make efficient use of space. Other modules should be placed to minimize interconnect length between them.
  
### Bandgap Layout
The bandgap consists of the OTA, pnp-based diodes as well as some extra components in the top-level cell. For all of our cells, except for the diode cell, the magic file was generated using `cicpy` before placing and routing manually in magic.

The `BANDGAP_OPAMP` cell consists of two current mirrors, one differential pair, two power gatings, and a second stage. 
The parallel transistors of the simple current mirror were placed next to each other, with overlapping bulk nodes. This was done to reduce the occupied space and reduce the mismatch between transistors. The PMOS used for the second stage was placed to the right of the current mirror with overlapping source, as it reduced the occupied area.
The differential pair were placed in the middle of the `BANDGAP_OPAMP` cell with their bulk node overlapping. With the symmetrical design, the differential pair sees the same, reducing mismatch between the pair.
The PMOS power gatings were placed as close to the rail as possible, while the NMOS power gating transistors were placed left to the NMOS simple current mirror. The transistor pulling down the output of the opamp uses the same transistor as a transistor. For the purpose of symmetrical design, the NMOS transistors were placed on each side of the simple NMOS current mirror.
The capacitor and resistor were placed at the bottom of the design, such that symmetry is achieved. Compared to the differential pair, the currents through these capacitors does not need to be matched.

The `BANDGAP_DIODE` cell has 9 diodes, in a 1:8 ratio. This enables them to be placed in a 3x3 layout, with the centre being used for the single diode and the 8 peripheral ones connected together. This ensures a symmetric layout.

The `BANDGAP` cell has the OTA with other components placed to the side. Of these, there are 5 PMOS transistors sharing gate, source and bulk. Since this is two double and one single, they are laid out vertically adjacent to eachother in a ABCBA pattern to ensure symmetry.
Powergating transistors are placed close to the power rails and connected to the transistors in between.
The resistor and and diode cells are placed in between the powergating transistors, to the side of the PMOS transistors. To avoid the cathode of the diode coupling to VSS through the bulk node, it is placed inside of a deep n-well, which provides electrial isolation from the main p substrate. This allows the usage of a powergating NMOS with the drain connected to the cathode of the diodes, instead of directly connecting the cathode to VSS.

### Oscillator Layout
The oscillator layout consists of two main parts: the comparator and the flip-flop making up the bridge to the digital section of the chip.

The comparator, similarly to the bandgap explained above, relies on layout symmetry to achieve highly matching device characteristics for the current mirrors and differential inputs thus reducing the circuit's error due to manufacturing imprecisions.
The flip-flop, capacitor and power gating transistors do not require such sophisticated placement, making room for the digital design.

### Digital Circuit Layout
The digital circuit layout is done using a librelane flow configured in the `rtl/config.json` file. `rtl/pin_order.cfg` contains the input and output pins and their rough placement. Running the flow creates folder `rtl/runs/RUN_<date>/final` containing the designs' performance metrics in `metrics.csv` and layout in `mag/sensor.mag`. The layout size is constrained using the config file to fit in the available area.

# What


| What            |        Cell/Name |
| :----           |  :----:       |
| Schematic       | design/LELO_GR02_SKY130A/LELO_GR02.sch |
| Schematic       | design/LELO_GR02_SKY130A/BANDGAP.sch |
| Schematic       | design/LELO_GR02_SKY130A/BANDGAP_OPAMP.sch |
| Schematic       | design/LELO_GR02_SKY130A/BANDGAP_DIODE.sch |
| Schematic       | design/LELO_GR02_SKY130A/OSCILLATOR.sch |
| Schematic       | design/LELO_GR02_SKY130A/COMPARATOR.sch |
| RTL             | rtl/counter.v |
| RTL             | rtl/fsm.v     |
| RTL             | rtl/counter.v |
| Layout          | design/LELO_GR02_SKY130A/LELO_GR02.mag|
| Layout          | design/LELO_GR02_SKY130A/BANDGAP_OPAMP.mag|
| Layout          | design/LELO_GR02_SKY130A/BANDGAP_DIODE.mag|
| Layout          | design/LELO_GR02_SKY130A/BANDGAP.mag|
| Layout          | design/LELO_GR02_SKY130A/OSCILLATOR.mag|
| Layout          | design/LELO_GR02_SKY130A/COMPARATOR.mag|
| Layout          | design/LELO_GR02_SKY130A/SENSOR.mag|



# Signal interface

| Signal | Direction | Domain | Description |
| :--- | :---: | :---: | :--- |
| VDD_1V8 | Input | VDD_1V8 | Main supply |
| OSC_TEMP_1V8 | Output | VDD_1V8 | Temperature dependent oscillation frequency |
| PWRUP_1V8 | Input | VDD_1V8 | Power up the circuit |
| VSS | Input | Ground | Ground reference |

# Internal signals

| Signal | Description |
| :--- | :--- |
| PWRUP_N_1V8 | Inverted powerup signal |
| PWRUP_B_1V8 | Buffered powerup signal |
| I_PTAT | Current proportional to absolute temperature |
| V_CTAT | Voltage complementary to absolute temperature |


# Key parameters

| Parameter           | Min     | Typ             | Max     | Unit  |
| :---                | :---:   | :---:           | :---:   | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7     | 1.8             | 1.9     | V     |
| Temperature         | -40     | 27              | 125     | C     |
