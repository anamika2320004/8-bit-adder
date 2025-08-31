# 8-Bit Adder in Verilog

## Overview
This project implements an **8-bit binary adder** using **Verilog HDL** on **EDA Playground**. The adder adds two 8-bit numbers and produces an 8-bit sum along with a carry-out. It serves as a fundamental component in digital systems for arithmetic operations.

---

## Features
- Adds two 8-bit binary numbers (`A` and `B`)
- Outputs an 8-bit sum (`SUM`)
- Generates a carry-out (`COUT`)
- Fully tested using a Verilog testbench

---

## Files
- `design.sv` – 8-bit adder module
- `testbench.sv` – Testbench for simulation

---

## Inputs & Outputs
**Inputs:**  
- `A[7:0]` – First 8-bit number  
- `B[7:0]` – Second 8-bit number  

**Outputs:**  
- `SUM[7:0]` – 8-bit sum  
- `COUT` – Carry-out

---

## How It Works
The adder is implemented using **ripple carry logic** with **full adders**:
C0 → FA0 → SUM0 → C1 → FA1 → SUM1 → ... → FA7 → SUM7 → COUT

Each full adder adds corresponding bits of `A` and `B` along with the carry from the previous stage.

---

## Simulation
1. Open **EDA Playground**.
2. Copy the module and testbench code.
3. Select a simulator (e.g., Icarus Verilog).
4. Run the simulation.
5. Observe the results in the console or waveform viewer.

**Example Table:**

| A        | B        | SUM      | COUT |
|----------|----------|----------|------|
| 00001101 | 00000111 | 00010100 | 0    |
| 11111111 | 00000001 | 00000000 | 1    |

---

## License
This project is for **educational purposes**.
