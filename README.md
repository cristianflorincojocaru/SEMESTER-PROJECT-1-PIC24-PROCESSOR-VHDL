# Semester Project No. 1 - PIC24 PROCESSOR VHDL

This repository contains the implementation of a simplified **24-bit PIC24-inspired processor**, written entirely in **VHDL**, developed as a semester project during year 3, semester 1.

The project represents a natural continuation and evolution of the **MIPS processor** designed and implemented during year 2, semester 2, within the **Computer Organization and Architecture course laboratories.**
While the MIPS processor was developed incrementally across multiple lab assignments, this PIC24 processor was designed as **a standalone semester project**, aiming to deepen understanding of processor architecture, instruction decoding, control logic, and hardware description using VHDL.



## PROJECT OBJECTIVE
The main objectives of this project are :

- to **design and implement** a **custom 24-bit processor architecture**

- to **understand and model** the **internal structure of a PIC24-like CPU**

- to gain hands-on experience with :

  - instruction fetch, decode, and execution

  - **ALU operations** and flag handling

  - control unit design

  - program counter and **branching logic**

- to **validate processor functionality** through **simulation and testbenches**

- to integrate hardware (VHDL) with software-level testing (assembly code)



## ARCHITECTURE AND SYSTEM STRUCTURE
The processor follows a **simplified single-cycle architecture,** inspired by the Microchip PIC24 family, adapted for educational purposes.

### HIGH-LEVEL COMPONENTS
- **Program Counter (PC)**

- **PC Update Logic**

  - sequential execution

  - conditional branching based on flags

- **Instruction ROM (32 × 24)**

- **Register File**

- **Arithmetic Logic Unit (ALU)**

- **Control Unit**

- **Multiplexers for data and address selection**

### TOP-LEVEL DESIGN
The entire system is integrated in the `pic24.vhd` top-level module, which interconnects all functional units and manages data / control flow.



## SUPPORTED INSTRUCTION SET
The processor implements a **custom subset of PIC24-like instructions,** all encoded on **24 bits.**

### INSTRUCTION CATEGORIES

**LOGICAL INSTRUCTIONS**
- **`IOR (Immediate OR)`** -
performs a logical OR between a register and a 5-bit literal value.

**BIT MANIPULATION INSTRUCTIONS**
- **`BTST (Bit Test)`** -
tests a specific bit and updates the Carry flag accordingly.

**SPECIAL INSTRUCTIONS**
- **`FF1R (Find First One from Right)`** -
detects the position of the first set bit starting from the LSB.

- **`ZE (Zero Extend)`** -
performs zero extension on register values.

### BRANCH INSTRUCTIONS
Conditional branch instructions based on processor flags :
- **`BRA_C`** – branch if **Carry flag** is set
- **`BRA_Z`** – branch if **Zero flag** is set
- **`BRA_N`** – branch if **Negative flag** is set
- **`BRA_OV`** – branch if **Overflow flag** is set



## TESTING AND VALIDATION
The processor is thoroughly validated using **ModelSim** simulations.

### TEST STRATEGY
- dedicated **testbench files** for each instruction and flag behavior
- separate ROM implementations for targeted instruction testing
- waveform analysis using **`.wlf`** files
- results documented in simulation output files

### SOFTWARE-LEVEL TESTING
A small assembly program **`(test1.s)`** was written and assembled using **MPLAB X,** then mapped into the instruction ROM to verify correct execution at hardware level.



## TOOLS AND TECHNOLOGIES
The processor was implemented using **`VHDL`** as the hardware description language, with **`Xilinx ISE`** used for project management and synthesis. Functional verification and waveform analysis were performed using **`ModelSim`**, while **`MPLAB X`** was employed for writing and assembling test programs in assembly language, enabling software-level validation of the hardware design.



## RESOURCES AND INSPIRATION
The design of this processor was guided by the **`16-bit MCU and DSC Programmer’s Reference Manual – High-Performance Microcontrollers (MCU) and Digital Signal Controllers (DSC)`**, which provided the architectural and instruction-level reference. The project also builds directly on the **MIPS processor implemented during the previous academic year,** reusing and extending the architectural concepts, design methodology, and VHDL development experience gained from that work.



## RELATIONSHIP TO PREVIOUS WORK
This project builds upon the knowledge and experience gained from the **MIPS processor project,** which was developed incrementally during laboratory sessions in **year 2, semester 2** for the *Computer Organization and Architecture* course.

Compared to the MIPS project, this implementation :

- uses a **different ISA philosophy**
- focuses on **24-bit instruction encoding**
- explores **PIC-style conditional branching and bit-level operations**
- emphasizes independent system design rather than guided lab development



## CONTRIBUTIONS 
Project created by **Cristian Florin Cojocaru** (**CSE.3** - **University of Craiova / Faculty of Automatics, Computer Science and Electronics**). Contributions are welcome ! If you have suggestions for improving the code or documentation, please submit a pull request.


## LICENSE
This project is licensed under the [MIT License](LICENSE).
