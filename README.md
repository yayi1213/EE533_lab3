# EE533 Lab3: Mini-Intrusion Detection Engine (Mini-IDS)

## Project Overview
This repository contains the design of a hardware-based **Mini-Intrusion Detection System (Mini-IDS)** as part of the EE 533 course. The system is designed to scan incoming network packets for specific malicious signatures using a sliding window pattern matching algorithm. The project utilizes a combination of Verilog HDL, Xilinx IP Cores, and Schematic Capture.

## Repository Structure
The repository includes the following Verilog source files:

* **`busmerge.v`**: A module that concatenates a 48-bit bus (`da`) and a 64-bit bus (`db`) into a single 112-bit wide bus (`q`) to enable cross-packet signature detection.
* **`detect7B.v`**: The top-level detection module that integrates the pipeline registers, bus merger, and word matching logic.
* **`wordmatch.v`**: Implements the parallel pattern matching logic by instantiating 8 comparators to check different byte offsets simultaneously .
* **`comparator.v`**: Performs 56-bit equality comparison with support for bit-level wildcards via `amsk`.
* **`reg9B.v`**: A 72-bit wide pipeline register used for data synchronization and flow control.
* **`dual9Bmem.v`**: A wrapper for the Xilinx IP Core 9-byte (72-bit) wide synchronous dual-port memory used as a packet buffer.

---

## Design Logic & Algorithm

### Pattern Matching Algorithm
The Mini-IDS employs a **Sliding Window Comparison** strategy:
1. **Pipeline Stages**: Incoming data (`pipe1`) is passed through `reg9B` to generate a delayed version (`pipe0`).
2. **Window Formation**: `busmerge` combines the 48 LSBs of the previous data with the current 64 bits to create a 112-bit observation window.
3. **Parallel Comparison**: The `wordmatch` module checks this window against the target 56-bit signature at 8 different byte offsets (0 to 56 bits) .
4. **Match Detection**: If any offset results in a match, the `match` signal is driven high and latched using a self-locking `FDCE` circuit.




## Simulation Results
The design was verified using the `ids_tb.tbw` testbench in the Xilinx ISE Simulator (ISim).

* **Verification**: The simulation demonstrates that the `match` signal correctly transitions from 0 to 1 when the input data stream matches the signature stored in `hwregA`.

## Tools Used
* **Xilinx ISE 10.1** (Schematic Capture & Simulation).
* **ISim** (Behavioral Simulation).
* **VMware Workstation** (Running Windows XP Guest OS).

---

## Author
* **YaYi Lin** 
* **Institution**: University of Southern California (USC)