# 6-DOF Quadcopter Flight Dynamics & LQR/PID Attitude-Position Control

[![MATLAB](https://img.shields.io/badge/MATLAB-R2023b%20%7C%20R2024b-0076A8?logo=mathworks&logoColor=white)](https://www.mathworks.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Engineering Domain](https://img.shields.io/badge/Domain-Aerospace%20&%20Autonomous%20Robotics-blue.svg)](#)
[![Status](https://img.shields.io/badge/Simulations-Verified%20Passing-success.svg)](#)

> **Official Open-Source Engineering Package by [MATLABSolutions.com](https://www.matlabsolutions.com)**  
> High-performance numerical simulation, algorithm modeling, and verified state equations.

---

## 🎯 Overview & Problem Statement
Full non-linear 6-degrees-of-freedom rigid body quadrotor state-space formulation with Linear Quadratic Regulator (LQR) hovering attitude stabilization and trajectory tracking.

This repository provides verified, modular MATLAB source code and analytical formulas designed for university research, ABET/CEAB engineering labs, capstone design, and industrial modeling.

---

## 📐 Mathematical Formulation & Governing Equations

- **Hover State Space Representation:**
  $$\dot{x}(t) = Ax(t) + Bu(t)$$
- **LQR Optimal Gain Computation:**
  $$K = R^{-1} B^T P, \quad A^T P + P A - P B R^{-1} B^T P + Q = 0$$

---

## 🚀 Quickstart & Execution

### Prerequisites
- MATLAB R2022b, R2023b, R2024a, or R2024b
- Base MATLAB (Zero paid proprietary third-party toolboxes required for this starter script)

### Running the Benchmark Simulation
1. Clone this repository:
   ```bash
   git clone https://github.com/matlabsolutions-simulink/quadcopter-6dof-lqr-pid-flight-control.git
   cd quadcopter-6dof-lqr-pid-flight-control
   ```
2. Open MATLAB and navigate to the project directory.
3. Run the primary entry script in the MATLAB Command Window:
   ```matlab
   run_quadcopter_lqr_simulation
   ```

---

## 💡 Need the Full Parameterized Simulink (.slx) Model or Custom Help?

> [!TIP]
> ### 🎓 24/7 Academic & Industrial Consulting from PhD Engineers
> Are you working on a senior design capstone, master's thesis, or strict coursework deadline?
> 
> Our team of **500+ PhD Engineers** at **[MATLABSolutions.com](https://www.matlabsolutions.com)** provides:
> - **Complete Pre-Parameterized Simulink (`.slx`) & Simscape Models**
> - **Custom Parameter Tuning & Hardware-in-the-Loop (HIL) Integration**
> - **Line-by-Line Code Documentation & 1-on-1 Walkthroughs**
> - **100% Plagiarism-Free Turnitin Verification Reports**
> - **Fast Turnaround:** Urgent deliveries from 6 hours to 3 days
>
> 🚀 **[Request Custom Solution & Instant Quote on MATLABSolutions.com](https://www.matlabsolutions.com/order-now.php?ref=github_quadcopter_6dof_lqr_pid_flight_control)**

---

## 📚 Technical Support & Contact
- **Website:** [https://www.matlabsolutions.com](https://www.matlabsolutions.com)
- **Direct Order Portal:** [https://www.matlabsolutions.com/order-now.php](https://www.matlabsolutions.com/order-now.php)
- **Email:** info@matlabsolutions.com

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
