# 6-DOF Quadcopter Flight Dynamics & LQR/PID Attitude-Position Control

[![MATLAB](https://img.shields.io/badge/MATLAB-R2023b%20%7C%20R2024b-0076A8?logo=mathworks&logoColor=white)](https://www.mathworks.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Domain](https://img.shields.io/badge/Domain-Aerospace%20&%20Autonomous%20Robotics-lightgrey.svg)](#)

A standalone MATLAB implementation of 6-DOF Quadcopter Flight Dynamics. Includes the governing dynamics, analytical formulations, and an executable script you can run directly without proprietary third-party dependencies.

## Overview

This repository provides a 6-DOF rigid body model of a quadrotor drone operating near hover. It sets up the linearized state-space system, calculates optimal feedback gains using a Linear Quadratic Regulator (LQR), and simulates the closed-loop attitude and altitude response.

## Governing Equations & Mathematical Formulation

### State-Space Representation Near Hover

$$
\dot{x}(t) = A x(t) + B u(t)
$$

where the state vector is $x = [z, \dot{z}, \phi, \dot{\phi}, \theta, \dot{\theta}, \psi, \dot{\psi}]^T$ representing altitude, roll, pitch, yaw, and their angular rates.

### LQR Cost Function & Algebraic Riccati Equation

$$
J = \int_{0}^{\infty} \left( x^T Q x + u^T R u \right) dt
$$

$$
A^T P + P A - P B R^{-1} B^T P + Q = 0
$$

The optimal state feedback gain matrix is computed as:

$$
K = R^{-1} B^T P
$$

## Getting Started

### Prerequisites
- MATLAB (tested on R2022b through R2024b)
- Standard base MATLAB installation (no paid external toolboxes required for this starter script)

### Running the Code
1. Clone the repository:
   ```bash
   git clone https://github.com/matlabsolutions-simulink/quadcopter-6dof-lqr-pid-flight-control.git
   cd quadcopter-6dof-lqr-pid-flight-control
   ```
2. Open MATLAB, navigate to the cloned folder, and run:
   ```matlab
   run_quadcopter_lqr_simulation
   ```

## Need the Complete Simulink or Simscape Model?

If you are working on a university capstone, thesis, or lab assignment and need the complete `.slx` model with Simscape physical networks, custom parameter lookup tables, or automated test harnesses, our team at [MATLABSolutions.com](https://www.matlabsolutions.com/order-now.php?ref=github_quadcopter_6dof_lqr_pid_flight_control) provides custom academic simulation and consulting support.

## Technical Inquiries & Contact
- Website: [matlabsolutions.com](https://www.matlabsolutions.com)
- Custom Consulting Portal: [matlabsolutions.com/order-now.php](https://www.matlabsolutions.com/order-now.php)
- Email: info@matlabsolutions.com

## License
This project is open-source under the [MIT License](LICENSE).
