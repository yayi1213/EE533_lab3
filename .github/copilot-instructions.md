# AI Coding Agent Instructions for EE533 Lab 3 Mini-IDS

## Project Overview
This is a **Hardware Intrusion Detection System (Mini-IDS)** implemented in Verilog for Xilinx FPGA (Spartan 3E). The system detects malicious network packet signatures using a sliding window pattern matching algorithm with 56-bit signature matching across 8 byte offsets.

## Architecture & Data Flow

### Core Pipeline (detect7B.v)
The detection engine processes 72-bit (9-byte) wide data through three stages:
1. **Pipeline Register** (`reg9B`): Delays incoming data by one clock cycle to create `pipe0`
2. **Bus Merger** (`busmerge`): Concatenates 48 LSBs of `pipe0` + 64 LSBs of current `pipe1` → 112-bit observation window
3. **Pattern Matching** (`wordmatch`): Checks window against 56-bit signature (`hwregA[55:0]`) at 8 offsets using parallel comparators

**Key insight**: The sliding window enables detection of signatures split across two consecutive packets.

### Parallel Comparator Architecture (wordmatch.v)
- 8 comparator instances check the 112-bit window at byte offsets 0, 8, 16, 24, 32, 40, 48, 56
- Each comparator output is OR'd together
- Match detection uses FDCE latch for self-locking (match stays high once triggered)

### Wildcard Masking (comparator.v)
- 7-bit `AMASK[6:0]` acts as wildcard mask - one bit per byte
- When `AMASK[i]` = 1, byte `i` comparison is forced to "true" (ignored)
- Enables flexible pattern matching (e.g., ignore protocol fields)

## File Organization & Responsibilities

| File | Type | Purpose |
|------|------|---------|
| `detect7B.v` / `.vhf` | Top-level | Instantiates pipeline, busmerge, wordmatch; manages match signal |
| `wordmatch.v` / `.vhf` | Logic | 8-way parallel comparator instantiation + OR reduction |
| `comparator.v` / `.vhf` | Logic | 56-bit (7×8-bit) equality with AMASK wildcard support |
| `busmerge.v` | Simple Concat | 48-bit + 64-bit → 112-bit (implemented as `{da,db}`) |
| `reg9B.v` / `.vhf` | Register | 72-bit pipeline register (6× FD16CE primitives) |
| `dual9Bmem.v` | Memory | 9-byte wide dual-port RAM wrapper (Xilinx IP) |
| `dropfifo.v` / `.vhf` | Logic | Packet buffering/dropping decision logic |
| `ids_tb.tbw` | Testbench | ISim simulation testbench configuration |

**Note**: `.v` files are simple Verilog; `.vhf` files are VHDL generated from Xilinx ISE schematics - **do not manually edit `.vhf` files**, regenerate from `.sch` via `sch2vhdl`.

## Development Patterns & Conventions

### Port Naming
- `clk`: 100 MHz clock (timing critical)
- `ce`: Clock enable for pipeline flow control
- `mrst`: Master reset (active high)
- `match_en`: Match detection enable
- `pipe0`/`pipe1`: 72-bit pipeline stages
- `hwregA`: 64-bit register holding signature (upper 8 bits unused, lower 56 bits = signature, bits 62-56 = AMASK)

### Data Bus Widths (Critical)
- Packet data: 72 bits (9 bytes)
- Signature: 56 bits (7 bytes)
- Observation window: 112 bits (14 bytes = 48-bit + 64-bit merger)
- Comparators: 8 parallel units, each checking 56 bits

### Design Constraints
- Signature stored in `hwregA` persists across packets (set once, matches all incoming data)
- Match signal latches high via FDCE - requires explicit reset to clear
- Pipeline delay: 2 clock cycles from input to match output
- Xilinx IP primitive: `dual9Bmem` is generated IP (modify only via Xilinx Coregen)

## Simulation & Verification

### Test Execution (ISim - Xilinx ISE)
1. Open project in Xilinx ISE 10.1
2. Select testbench `ids_tb.tbw` in hierarchy
3. Run behavioral simulation (ISim)
4. Verify `match` signal transitions from 0→1 when input matches signature in `hwregA`

### Signal Observation Points
- `pipe1` (input): Incoming 72-bit packet data
- `hwregA`: Currently active signature (56-bit effective)
- `XLXN_9` (internal): 112-bit merged observation window
- `match`: Output assertion indicating signature match
- `XLXN_14`: Unlatched match pulse (before FDCE)

## Common Tasks & Examples

**Adding a wildcard mask**: Modify bits [62:56] of `hwregA` in testbench
**Changing signature**: Update `hwregA[55:0]` with new 56-bit pattern
**Pipeline analysis**: Trace `pipe0`, `pipe1`, `XLXN_9`, match through simulation
**Adding detection logic**: Extend `wordmatch.v` OR gate (currently 8-way)

## External Dependencies
- **Xilinx ISE 10.1**: Schematic capture, synthesis, ISim simulator
- **UNISIM library**: Xilinx primitives (FDCE, FD16CE, AND/OR gates, FMAP)
- **Target device**: Spartan 3E (aspartan3e)
- **Simulation**: ISim behavioral only; post-place&route simulation not verified
