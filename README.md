# SLC-3
Simplified version of the original LC-3 programmed on SystemVerilog

**Summary**

The program is able to run both on the FPGA and on ModelSim with different type of instantiated memory.
When running on the FPGA the side switches are able to initialize the program counter to a specific location for testing

The SLC-3 has a fully fledged out fetch, decode, and execute cycle.
It is able to perform the following instructions:
  ADD*, AND*, NOT, BR, JMP, JSR, LDR, STR, PAUSE
(the * denotes two operating modes allows for immediate operand)

The SLC-3 differs from the LC-3 mainly in the lack of certain opcodes and the replacement of the memory storage system
