<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project generates a mesmerizing VGA display of hypnotic concentric rings that expand or contract from the center of the screen. It's designed as a demoscene-style visual effect for the Tiny Tapeout platform.

### Technical Details

**Distance Calculation:** The distance from center is approximated using the formula: max(|x|, |y|) + min(|x|, |y|)/2, which provides a reasonable octagonal approximation of Euclidean distance without requiring multiplication or square roots.

**Animation:** A frame counter increments each video frame. The animated radius is computed by adding (or subtracting, depending on direction) the frame counter to the distance value, creating the illusion of expanding or contracting rings.

**Color Generation:** The 8-bit animated radius value is mapped to RGB222 color outputs by selecting different bit slices for each color channel, creating smooth color cycling through the rings.

## How to test

1. Connect a VGA PMOD (such as the Tiny VGA PMOD) to the output pins
2. Connect a VGA monitor
3. Apply power and release reset

### Controls

* **ui_in[0]**: Speed control
  * 0 = Normal speed (1 frame step per vsync)
  * 1 = Fast speed (2 frame steps per vsync)

* **ui_in[1]**: Direction control
  * 0 = Rings expand outward from center
  * 1 = Rings contract inward toward center

## External hardware

* Tiny VGA PMOD (or compatible RGB222 VGA PMOD)
* VGA monitor or display with VGA input
