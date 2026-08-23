## Credits

We gratefully acknowledge the Center of Excellence (CoE) in Integrated Circuits and Systems (ICAS) and the Department of Electronics and Communication Engineering (ECE) for providing the necessary resources and guidance.

Special thanks to Dr. H V Ravish Aradhya (HoD- ECE), Dr. K R Usha Rani (Associate Dean-PG), Dr. K. S. Geetha (Vice Principal) and Dr. K. N. Subramanya (Principal) for their constant encouragement and support in facilitating this Tiny Tapeout SKY26C submission.

# Configurable CAM with Masked Pattern Matching and Priority Resolution

## How it works

This project implements an 8-bit configurable Content-Addressable Memory (CAM) designed for Tiny Tapeout SKY26C.

The CAM stores 8-bit data values at different memory addresses and supports searching the stored data using an input search pattern. Instead of accessing memory using an address, the CAM compares the search value against multiple stored entries and identifies the address of the matching entry.

The design supports exact matching, masked pattern matching, and priority resolution.

In exact matching, the complete 8-bit search value is compared with the stored CAM entries. If a matching entry is found, the corresponding address is returned.

The masked search operation allows selected bits of the search pattern to be ignored during comparison. This makes it possible to search for partially specified patterns rather than requiring all eight bits to match.

When more than one CAM entry matches the search pattern, the priority resolution logic selects the highest-priority matching entry and returns its address.

The main blocks are:

- 8-bit CAM memory array
- 8-bit parallel comparison logic
- Masked pattern matching logic
- Match detection logic
- Priority resolution logic
- Address decoding and write logic
- Search control logic

The design is intended for compact pattern-matching and lookup applications where fast content-based searching is required.

## How to test

1. Apply reset by driving `rst_n` low.
2. Release reset by driving `rst_n` high.
3. Enable the design using the enable signal.
4. Write an 8-bit value into a selected CAM address.
5. Repeat the write operation for the required CAM entries.
6. Perform an exact search using an 8-bit search value.
7. Verify that a matching value produces the corresponding CAM address.
8. Perform a search using a value that is not stored and verify the no-match response.
9. Configure a masked search pattern and verify that the masked bits are ignored during comparison.
10. Store the same or matching values in multiple CAM locations.
11. Perform a priority search and verify that the expected highest-priority matching address is returned.
12. Verify that the search result is generated within one clock cycle.

The Cocotb testbench in `test/test.py` performs functional verification of the configurable CAM, including write operations, exact matching, no-match conditions, masked matching, and priority resolution.

The gate-level testbench is also used to verify that the functionality is preserved after synthesis and physical implementation.

## Verification

The design has been verified through the Tiny Tapeout SKY26C implementation flow.

The verification includes:

- RTL functional simulation
- Gate-level simulation
- Exact-match search
- No-match search
- Masked pattern matching
- Priority resolution
- DRC verification
- LVS verification
- GDS generation

The gate-level verification successfully confirms the CAM search operations, including exact matches, no-match conditions, masked matching, and priority matching.

The final physical implementation was successfully generated as a GDS file for the Tiny Tapeout SKY26C shuttle.


