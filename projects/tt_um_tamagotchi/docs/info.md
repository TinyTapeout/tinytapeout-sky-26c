<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project implements a tamagotchi: a cat is born on startup and is to be kept alive.
- If the cat does not sleep, play or eat for an extended period of time, its battery decreases, the battery can be increased again by performing these actions.
- If the cats battery is empty, it loses one of its nine lives.
- If no lives remain, the tamagotchi reboots completely.

Interacting with the tamagotchi is done using a gamepad:
- The X, Y, A and B buttons are used to transition to the 'play', 'sleep', 'eat' and 'default' state respectively.
- The 'left', 'right', 'up' and 'down' keys can be used in the 'eat' state to catch fish, catch three fish to increase the battery.
- Letting the cat sleep or play for an extended amount of time allows it to increase its battery again.
Feedback is given to the user through a VGA screen and an audio output.

## How to test

The tamagotchi can be used by attaching a gamepad, VGA screen and audio module.
In order to reset the tamagotchi, pull the rst_n low for a while.
When the rst_n is high again, the screen should flash colorfully as the the cat is born. After this process, the tamagotchi is in a 'default' idle state. Use the buttons on the gamepad to traverse states (remember to go back to the default state before trying to enter a new state), discover the fish-catching minigame and keep the cat alive.

If the 'A' button is pressed while 'select' is pressed, the tamagotchi enters a 'fast' mode where the battery increases and decreases quicker, making testing easier.

## External hardware

Gamepad, VGA and Audio PMODs.
