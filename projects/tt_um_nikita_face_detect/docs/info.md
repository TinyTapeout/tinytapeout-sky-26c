<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any sections you do not need.

You can also include images in this folder and reference them in the markdown. Each image must be less than 512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Pixels are streamed into the chip serially, one channel at a time (R, G, B) over `ui_in`. The `uio_in` pins carry the channel select, pixel_valid flag, frame_done flag, and zone metadata (which third of the face the pixel belongs to).

The chip classifies each pixel for skin tone using RGB thresholds, and accumulates dark pixel counts in the eye, nose, and mouth zones. At end of frame (frame_done pulse), it evaluates all conditions and latches the result onto `uo_out`.

## How to test

Use the MATLAB preprocessing script to convert a BMP image into a pixel stream CSV with zone metadata. Feed pixels via a microcontroller or the cocotb testbench. Pulse `frame_done` after the last pixel. Read `face_detected` on `uo_out[0]`. 

## Inputs

| Pin | Description |
|-----|-------------|
| ui_in[7:0] | 8-bit pixel channel value (R, G, or B) |
| uio_in[1:0] | Channel select: 00=R, 01=G, 10=B |
| uio_in[2] | pixel_valid |
| uio_in[3] | frame_done |
| uio_in[5:4] | row_zone: 00=eye, 01=nose, 10=mouth |
| uio_in[7:6] | col_zone: 00=left, 01=right, 10=centre |

## Outputs

| Pin | Description |
|-----|-------------|
| uo_out[0] | face_detected |
| uo_out[1] | skin_found |
| uo_out[2] | eyes_found |
| uo_out[3] | nose_found |
| uo_out[4] | mouth_found |
