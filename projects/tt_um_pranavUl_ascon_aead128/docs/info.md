<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A bit-serial implementation of the Ascon permutation (NIST SP 800-232). The 320-bit state lives in five 64-bit recirculating shift registers, processed one 5-bit column per cycle through a single shared S-box; a round is a 64-cycle substitution lap followed by a 64-cycle linear-diffusion lap, so p8 takes 1024 cycles and p12 takes 1536.

The host interface is a streaming "lap" port with no on-chip data buffers. A lap is 64 cycles during which the host supplies one 5-bit column per cycle (COL_IN) and the write-back column appears live on COL_OUT. Two lap modes: RAW (state := COL_IN, used to load the initial state) and XOR (state ^= COL_IN, used for everything else). A lap can optionally trigger the permutation (8 or 12 rounds) when it ends.

All Ascon-AEAD128 protocol steps map onto laps with host-computed columns: initialization is a RAW lap carrying IV/key/nonce followed by p12; key XORs, block absorption, domain separation, and tag generation are XOR laps. Ciphertext bits appear on COL_OUT[1:0] during absorb laps and tag bits on COL_OUT[4:3] during the tag lap. The chip performs all state processing; the host performs padding, block sequencing, and scheduling, and must be cycle-synchronous with the design clock. 

This host/chip split is an intentional area optimization, as removing all on-chip 128-bit buffers was necessary to fit the complete Ascon datapath in two tiles.

## How to test

`cd test && make` runs 8 Ascon-AEAD128 known-answer tests end-to-end through the pins; expected values come from the pyascon reference implementation. A 1113-vector KAT sweep driving the same interface is in `verif/`.

On hardware, the host must control or be locked to the design clock (e.g., the demo board RP2040 stepping the clock while bit-banging the pins). Wait for READY, assert LAP_GO with the lap mode on LAP_XOR and perm controls on PERM_AFTER/PERM_12, then supply one column per cycle for 64 cycles while sampling COL_OUT.

## External hardware

None.
