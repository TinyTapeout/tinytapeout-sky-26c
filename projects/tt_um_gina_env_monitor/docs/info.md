<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Environmental + Spatial Edge Processor

## How it works

The Environmental + Spatial Edge Processor is a small digital ASIC designed for low-power environmental monitoring and location-aware field data collection.

<img width="1536" height="1024" alt="Tricorder" src="https://github.com/user-attachments/assets/115af43a-db4c-475f-84a1-699c713daaa4" />


The design combines two hardware-processing functions:

1. **Environmental processing** for temperature, humidity, and atmospheric pressure.
2. **Spatial processing** for determining whether a device is within a configurable distance of a target location.

The ASIC is intended to operate as part of a portable environmental mapping device. External sensors and a GNSS receiver provide measurements and position information through a small low-power controller, while the ASIC performs the environmental and spatial edge-processing operations.

---

## Environmental processing

The ASIC supports three independent environmental measurement channels:

- Temperature
- Relative humidity
- Atmospheric pressure

An external environmental sensor, such as a BME280, provides digitized measurements to a small external controller. The controller converts the measurements into the unsigned 8-bit representation expected by the ASIC.

<img width="382" height="606" alt="Screenshot 2026-08-21 at 2 32 38 PM" src="https://github.com/user-attachments/assets/b4b6c5e3-8ae8-4173-8495-e13103d5c842" />
<img width="431" height="441" alt="Screenshot 2026-08-21 at 4 21 56 PM" src="https://github.com/user-attachments/assets/992cb916-2199-4820-addc-33574a0d1ac5" />


- Latest measurement
- Minimum measurement
- Maximum measurement
- Eight-sample average
- Programmable low threshold
- Programmable high threshold
- High/low anomaly detection

| `ui_in[1:0]` | Data type |
|---|---|
| `00` | Temperature |
| `01` | Humidity |
| `10` | Pressure |
| `11` | Spatial data |

When `ui_in[2]` (`sample_valid`) is asserted, the ASIC captures the value on `uio_in[7:0]`.

Each environmental channel independently maintains:

- Latest measurement
- Eight-sample average
- Programmable low threshold
- Programmable high threshold
- Low/high anomaly detection

The eight-sample average is calculated using an accumulator. Eight consecutive measurements of the same environmental type are summed and divided by eight using a three-bit right shift.

This avoids the area cost of implementing a general-purpose hardware divider.

### Reading environmental results

`ui_in[3]` selects the environmental result:

| `ui_in[3]` | Result |
|---|---|
| `0` | Latest measurement |
| `1` | Eight-sample average |

`ui_in[4]` is unused.

The selected 8-bit result is presented on `uo_out[7:0]`.

`ui_in[5]` clears the accumulated averaging state.

### Minimum and maximum measurements

Lifetime minimum and maximum measurements are intentionally **not stored inside the ASIC**.

In the complete portable system, the external low-power controller can maintain min/max values in its own memory and optionally store long-term observations on a microSD card.

Moving this historical bookkeeping outside the ASIC reduces silicon utilization while preserving the more specialized environmental and spatial processing in hardware.

---

## Programmable environmental thresholds

Each environmental channel contains programmable low and high thresholds.

The operating mode is selected using `ui_in[7:6]`:

| `ui_in[7:6]` | Operation |
|---|---|
| `00` | Submit normal sample/current position |
| `01` | Program low threshold/spatial target |
| `10` | Program high threshold/spatial radius |
| `11` | Read combined status |

For example, a temperature channel could be configured with:

    LOW  = 50
    HIGH = 100

A temperature measurement of `75` produces no anomaly.

A measurement of `110` produces a high-temperature anomaly.

A measurement of `40` produces a low-temperature anomaly.

The ASIC performs these comparisons directly in hardware.

---

# Spatial processing

The ASIC also contains a compact spatial-processing engine.

It operates on an **8 × 8 local coordinate grid** using 3-bit X and Y coordinates:

    X = 0–7
    Y = 0–7

The external controller is responsible for obtaining real-world position information, such as GNSS latitude and longitude, and translating that position into the local coordinate representation used by the ASIC.

The ASIC itself then performs the spatial calculations.

It stores:

- Current X coordinate
- Current Y coordinate
- Target X coordinate
- Target Y coordinate
- Target radius

---

## Manhattan distance engine

The ASIC calculates Manhattan distance between the current position and the configured target:

    distance =
        |current_x - target_x|
        +
        |current_y - target_y|

For example:

    Target  = (3, 4)
    Current = (4, 5)

The ASIC calculates:

    |4 - 3| + |5 - 4|
        = 1 + 1
        = 2

The calculated distance can be read from the ASIC output when the spatial channel is selected.

---

## Spatial radius / zone detection

A programmable radius defines a target zone.

The ASIC evaluates:

    inside_target_zone =
        distance <= target_radius

For example:

    Target  = (3, 4)
    Radius  = 3
    Current = (4, 5)

produces:

    Distance = 2
    2 <= 3

Therefore:

    inside_target_zone = 1

If the device moves to:

    Current = (7, 7)

the ASIC calculates:

    |7 - 3| + |7 - 4|
        = 4 + 3
        = 7

Since:

    7 > 3

the device is outside the configured target zone.

Spatial zone detection does not become active until a valid current location has been supplied.

---

# Location-aware environmental events

The environmental and spatial engines can operate together.

The ASIC generates a location-aware environmental event when:

    environmental anomaly
            AND
    inside target spatial zone

are both true.

This allows the hardware to answer questions such as:

> Is an abnormal environmental condition occurring within the geographic area I am monitoring?

For example:

    Target location = (3, 3)
    Radius          = 2
    Current         = (4, 3)
    Temperature     = 120
    High threshold  = 100

The spatial engine determines that the current location is inside the target zone.

The environmental engine determines that the temperature exceeds its programmed threshold.

The ASIC therefore asserts the combined location-aware environmental event.

If the device moves outside the target zone, the environmental anomaly may remain active while the combined location-aware event becomes inactive.

---

## Status output

When `ui_in[7:6] = 11`, `uo_out[7:0]` provides the combined status byte:

| Bit | Meaning |
|---:|---|
| 7 | Location-aware environmental event |
| 6 | Any environmental anomaly |
| 5 | Inside target spatial zone |
| 4 | Temperature high |
| 3 | Temperature low |
| 2 | Humidity high |
| 1 | Humidity low |
| 0 | Pressure anomaly |

This provides a compact hardware status interface for an external controller or display system.

---

# How to test

Set `ena` high and reset the ASIC by driving `rst_n` low for at least two clock cycles, then drive `rst_n` high.

## Submit an environmental measurement

1. Select the environmental channel with `ui_in[1:0]`.
2. Place the unsigned 8-bit measurement on `uio_in[7:0]`.
3. Set `ui_in[7:6] = 00`.
4. Assert `ui_in[2]` (`sample_valid`).
5. Allow a rising edge of `clk`.
6. Deassert `sample_valid`.

For example, submitting these eight temperature samples:

    64, 66, 68, 70, 72, 74, 76, 78

produces:

    Latest  = 78
    Average = 71

Temperature, humidity, and pressure averaging state is maintained independently.

---

## Configure a spatial target

Select the spatial channel:

    ui_in[1:0] = 11

Set:

    ui_in[7:6] = 01

Place the target coordinates on:

    uio_in[5:3] = target X
    uio_in[2:0] = target Y

Assert `sample_valid` for one clock cycle.

---

## Configure the target radius

Select:

    ui_in[1:0] = 11
    ui_in[7:6] = 10

Place the radius on:

    uio_in[3:0]

Assert `sample_valid` for one clock cycle.

---

## Submit the current position

Select:

    ui_in[1:0] = 11
    ui_in[7:6] = 00

Place the current coordinates on:

    uio_in[5:3] = current X
    uio_in[2:0] = current Y

Assert `sample_valid` for one clock cycle.

The ASIC then calculates the Manhattan distance and determines whether the current location is inside the configured target radius.

---

# Cocotb verification

The Cocotb test suite verifies:

- Latest temperature, humidity, and pressure values
- Eight-sample averaging
- Independent environmental channels
- Clearing accumulated averaging state
- Programmable environmental thresholds
- Environmental anomaly detection
- Spatial target programming
- Spatial radius programming
- Current-position updates
- Manhattan distance calculation
- Inside/outside target-zone detection
- Combined location-aware environmental events

The RTL tests can be run using:

    cd test
    make

GitHub Actions additionally runs the Tiny Tapeout automated test, documentation, synthesis, physical-design, and precheck workflows.

---

# External hardware

The ASIC performs digital processing and does not directly contain environmental sensors, GNSS reception, a display, or long-term storage.

A future portable implementation is intended to combine the ASIC with:

- Low-power GNSS receiver with integrated antenna
- BME280 temperature/humidity/pressure sensor
- Low-power microcontroller
- Small Memory LCD
- microSD storage
- Rechargeable LiPo battery
- Low-power voltage regulation and charging circuitry
- Wake/power button

The BME280 is not a permanent requirement. Other digital environmental sensors could be used as long as the external controller translates their measurements into the input representation expected by the ASIC.

The controller would handle:

- GNSS communication
- Environmental sensor communication
- Conversion of GNSS coordinates into the ASIC's local X/Y grid
- Lifetime minimum/maximum tracking
- Display control
- microSD logging
- Power-management coordination

The ASIC remains responsible for the dedicated edge-processing operations:

- Environmental averaging
- Threshold comparisons
- Environmental anomaly detection
- Manhattan spatial distance
- Target-zone detection
- Combined location-aware environmental event detection

This architecture allows the environmental and spatial calculations to remain implemented as dedicated digital hardware while leaving communication, storage, display, and long-term historical data management to the external low-power controller.

--
#Other Parts Needed:
<img width="1203" height="581" alt="Screenshot 2026-08-21 at 3 50 59 PM" src="https://github.com/user-attachments/assets/56e370c9-2b0a-488f-895b-e05cb9a032b9" />

