<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A pump-out chip runs a pump until the tank is empty. The chips funciton is upon power up, and every 24hrs, turn on the pump, and using a current transformer (CT) measures the 60 Hz RMS current and observe a current drop indicating the tank has been emptied, or until a timeout has occured and then turn off the pump. Leds indicate status, and button allows starting a pump out operation at any time.

A chip starts with a [Datasheet](LPC_Datasheet.pdf)

## How to test

tests are run with 

    make -B

## External hardware

The chip is the control center for the pumpout controller. It connects to:

    - a 2ch ADC with inputs from : ch0: Current Transformer (CT) and ch1: potentiometer
    - 3 output to LEDs
    - 3 inputs from configureation DIP switch
    - 1 input from a push button
    - 1 output to drive a NPN transistor which will engage a relay to power the pump.
    
