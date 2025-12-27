# Low Power 8-bit ALU in Verilog

This project implements an 8-bit Arithmetic Logic Unit (ALU) optimized for
low power consumption using:

✔ Clock Gating  
✔ Operand Isolation  
✔ Switching Activity Reduction  

The ALU supports:
ADD, SUB, AND, OR, XOR, NOT, SHIFT LEFT, SHIFT RIGHT

The design is synthesizable and verified using a Verilog testbench.

---

## 📁 Project Structure
src/alu.v                  → ALU RTL design  
src/clk_gate.v             → Clock gating logic  
src/operand_isolation.v    → Operand isolation module  
tb/alu_tb.v                → Testbench  
sim/run.sh                 → Script to compile & run tests  

---

## 🧠 Low Power Techniques Used

### 🔹 Clock Gating
The ALU clock is turned OFF when enable = 0 to prevent unnecessary toggling.

### 🔹 Operand Isolation
Inputs are forced to zero when ALU is disabled to avoid transitions.

These significantly reduce **dynamic power consumption**.

---

## ▶️ Requirements
Install:
`iverilog`
`gtkwave` (optional for waveform view)

---

## ▶️ Run Simulation

