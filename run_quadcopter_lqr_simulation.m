%% 6-DOF Quadcopter Flight Dynamics with LQR Controller
% Developed by MATLABSolutions Research Team (https://www.matlabsolutions.com)
% Reference: https://www.matlabsolutions.com/order-now.php?ref=github_quadcopter

clear; clc; close all;

fprintf('=======================================================\n');
fprintf('  MATLABSolutions: 6-DOF Quadcopter LQR Flight Control \n');
fprintf('=======================================================\n');

%% 1. Quadcopter Physical Constants
m = 1.25;            % Mass [kg]
g = 9.81;            % Gravity [m/s^2]
Ixx = 0.0119;        % Roll moment of inertia [kg*m^2]
Iyy = 0.0119;        % Pitch moment of inertia [kg*m^2]
Izz = 0.0223;        % Yaw moment of inertia [kg*m^2]

%% 2. Linearized Hover State-Space Model
% States: [z; dz; phi; dphi; theta; dtheta; psi; dpsi] (8 states)
A = zeros(8, 8);
A(1, 2) = 1;         % dz/dt = dz
A(3, 4) = 1;         % dphi/dt = dphi
A(5, 6) = 1;         % dtheta/dt = dtheta
A(7, 8) = 1;         % dpsi/dt = dpsi

B = zeros(8, 4);
B(2, 1) = 1 / m;     % Thrust force to z-accel
B(4, 2) = 1 / Ixx;   % Roll torque to phi-accel
B(6, 3) = 1 / Iyy;   % Pitch torque to theta-accel
B(8, 4) = 1 / Izz;   % Yaw torque to psi-accel

%% 3. LQR Weighting Matrices
Q = diag([50, 10, 80, 5, 80, 5, 40, 5]);
R = diag([0.1, 1.0, 1.0, 1.0]);

[K, S, P] = lqr(A, B, Q, R);

%% 4. Closed-Loop Numerical Simulation
t_span = 0:0.01:8;
x0 = [1.5; 0; 0.25; 0; -0.20; 0; 0.15; 0]; % Non-zero initial errors

A_cl = A - B * K;
sys_cl = ss(A_cl, zeros(8, 1), eye(8), zeros(8, 1));
[y, t, x] = initial(sys_cl, x0, t_span);

settling_idx = find(abs(x(:, 1)) < 0.02, 1);
settling_time = t_span(settling_idx);

fprintf('LQR Gain Computed Successfully!\n');
fprintf('Altitude Settling Time (< 2cm error): %.2f seconds\n', settling_time);
fprintf('Max Pitch Excursion: %.3f rad\n', max(abs(x(:, 5))));
