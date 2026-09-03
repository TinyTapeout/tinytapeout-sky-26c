<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is divided into two sub-proyects:

### Subproject 1: Spinner

An animation of a spinner rotating clockwise in the upper 4 segments. It 
consist of 4 frames. On each frame only one segment is on

```
All segments   Frame 1   frame 2   frame 3   frame4
  ----         -----
 |    |                        |             |
 |    |                        |             |
  ----                              ------   
 |    |
 |    |
  ----
```

### Subproject 2: Hello world gates

Demostration of the following combinational components, shown in the lower 4
segments:

1. A wire (Input: IN0 ---> output: OUT4)
2. Not gate (Input: IN1 --> output: OUT5 )
3. And gate (Inputs: IN2, IN3 --> Output: OUT6)
4. Or gate (Inputs: IN4, IN5 --> oUTPUT: OUT7)

The output of the components is shown in the three lower segments and the point

SW1 --> Connected to the point (wire)
SW2 --> Connected to segment 2 (not)
SW3, SW4 --> Connected to segment 3 (and)
SW5, SW6 --> Connected to segment 4 (or)

```
     0
    ---- 
   |    |    
5  |  6 |  1          
    ----                           
   |    |
4  |    |  2
    ----
     3
```



## How to test

* Subproject 1: Just turn on the circuit. You will see an animation in the LED Display
* Subproject 2: Change inputs IN0, IN1, IN2, IN3, IN4 and IN5 to see the efect of the following gates
  * A wire
  * Not gate
  * And gate
  * Or gate

## External hardware

* LED Display
* DIP switches


