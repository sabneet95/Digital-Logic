# Digital Logic - Academic Simulations

A collection of **VHDL**, **Verilog**, and **SystemVerilog** circuits designed for educational purposes. These modular designs serve as learning tools for digital logic design, providing robust starting points for advanced projects. While not production-ready, they are fully modifiable to suit your needs.

![Simulation Overview](simulation.jpg)

> **Note:** These circuits are intended for academic simulations and may require modifications for integration into production environments.

---

## Table of Contents

- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This repository offers a range of digital logic circuits implemented in **VHDL**, **Verilog**, and **SystemVerilog**. Each design is well-commented and structured to facilitate learning and experimentation with core digital concepts. Accompanying testbenches and simulation scripts are provided to help you validate and explore the designs.

---

## Directory Structure

- **VHDL_Circuits/**: VHDL-based circuit designs with detailed documentation and testbenches.
- **Verilog_Circuits/**: Verilog-based circuit designs with comprehensive comments and testbenches.
- **SystemVerilog/**: SystemVerilog-based circuit designs leveraging modern constructs along with their testbenches.
- **simulation.jpg**: An image illustrating simulation output or circuit overviews.

---

## Requirements

- **Simulator:**
    - **For VHDL:**
        - Recommended: [ModelSim](https://www.mentor.com/products/fv/modelsim/)
        - Alternative: [GHDL](https://ghdl.github.io/)
    - **For Verilog:**
        - Recommended: [Verilator](https://www.veripool.org/verilator/)
        - Alternatives: Commercial options such as QuestaSim or Synopsys VCS
    - **For SystemVerilog:**
        - Recommended: [Verilator](https://www.veripool.org/verilator/) (supports SystemVerilog)
        - Alternatives: QuestaSim, Synopsys VCS, or other SystemVerilog-compliant simulators

---

## Usage

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/sabneet95/Digital-Logic.git
    ```

2. **Open the Project:**

    Use an IDE like [Visual Studio Code](https://code.visualstudio.com/) with VHDL/Verilog/SystemVerilog extensions.

3. **Explore the Designs:**

    - Navigate to **VHDL_Circuits/** or **Verilog_Circuits/** to review the respective designs.
    - Navigate to **SystemVerilog/** to review modern SystemVerilog implementations along with their testbenches.

4. **Run Simulations:**

    - **For VHDL circuits:**  
      Compile and run the testbenches using your preferred simulator (e.g., ModelSim or GHDL).
      
    - **For Verilog circuits:**  
      Compile and run using Verilator or your preferred Verilog simulator.
      
    - **For SystemVerilog circuits:**  
      Compile and run using a SystemVerilog-compatible simulator like Verilator, QuestaSim, or Synopsys VCS.
      
      *Example with Verilator (for a SystemVerilog full adder):*
      ```bash
      verilator --cc SystemVerilog/fulladder_sv.sv --exe sim_main.cpp
      make -C obj_dir -j -f Vfulladder_sv.mk Vfulladder_sv
      ./obj_dir/Vfulladder_sv
      ```

---

## Contributing

Contributions are welcome! To contribute:

1. **Discuss Your Ideas:**

    Open an issue for major changes or new circuits.

2. **Follow Coding Standards:**

    - Include detailed header comments.
    - Use consistent naming and formatting.
    - Update or add testbenches to validate your changes.

3. **Submit Pull Requests:**

    Ensure your changes are well-documented and tests pass before submitting.

---

## License

This project is licensed under the [MIT License](LICENSE).

