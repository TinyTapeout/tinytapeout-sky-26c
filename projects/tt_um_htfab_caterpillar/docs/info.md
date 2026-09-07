## How it works

Simon's Caterpillar is a re-implementation of the game
[Caterpillar Logic](https://github.com/gromozeka1980/kivy_contest_2014/tree/master/caterpillars) by Fuks Michael
targeting Tiny Tapeout with the [Simon Says PMOD](https://github.com/urish/tt-simon-pmod/).

The game consists of 20 levels. Each level has a secret rule that is valid for certain sequences of colors.
For instance, if the rule is "contains exactly two yellow tokens" then blue-yellow-green-yellow is a valid
sequence and yellow-red-blue is an invalid one.

A new level starts in exploration mode. You can ask an unlimited number of questions where you learn whether a
particular sequence is valid or not. Once you know the rule you can activate challenge mode. Now the roles are
reversed and the game asks you 15 questions. If you can answer all of them correctly, you advance to the next level.

## How to test

Set the clock to 50 kHz. Activate and reset the project. The 7-segment display should indicate level 1 and
only the blue led should light up. You are in exploration mode.

### Exploration mode

A sequence of up to 7 colors can be typed into the buffer with short presses of the buttons.
The leds indicate the sequence status in real time:
- red: sequence is invalid
- green: sequence is valid
- blue: buffer is empty
- yellow: buffer is full

(The empty sequence is neither valid nor invalid.)

Further operations are available as long button presses or a combination of two buttons:
- long-press red: clear buffer
- long-press yellow: erase last color from buffer ("backspace")
- long-press blue: show buffer contents (as a series of led flashes)
- long-press green: activate challenge mode
- short-press green & yellow: show a random valid sequence (and load into buffer)
- short-press red & blue: show a random invalid sequence (and load into buffer)
- short-press blue & yellow: switch to next level
- short-press red & green: switch to previous level
- short-press green & blue: toggle sound

### Challenge mode

A sequence of up to 6 colors is shown as a series of led flashes.
Press the green or red button to mark it as valid or invalid respectively.

Each correct answer adds a notch (turns on a new segment on the 7-segment display).
After the 15th one the next level is loaded.
An incorrect answer switches back to exploration mode.

Other keys and combinations:
- short-press or long-press blue: repeat the current question
- short-press red & yellow: switch back to exploration mode
- short-press blue & yellow: add a notch
- short-press red & green: remove a notch
- short-press green & blue: toggle sound

## External hardware

Simon Says PMOD
