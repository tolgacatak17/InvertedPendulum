# Model of an Inverted Pendulum on a Cart

This repository contains an assignment for the **Modeling and Control of Dynamic Systems (ME335)** course at **Bogazici University**, Mechanical Engineering Department. The assignment includes the development of engineering models to simulate an inverted pendulum on a cart, both in its **non-linear** and **linearized** forms, along with its transfer function representation.

---

## Problem Description

The system of an inverted pendulum on a cart is shown below:

<p align="center">
  <img src="https://github.com/user-attachments/assets/1d2b2a0b-c7a4-4ddd-a46e-83c1a1b369fe" alt="Inverted Pendulum on Cart" width="400">
</p>

---

## Task

The task consists of the following steps:

1. **Non-Linear Simulation**:
   - Build a Simulink model of the non-linear system.
   - Simulate the system and analyze the output.

2. **Linearized Simulation**:
   - Linearize the system around θ = 0.
   - Simulate the linearized model and compare it to the non-linear model.

3. **Transfer Function**:
   - Derive the transfer function model from the input U(s) to the output θ(s).
   - Inspect the impulse response and comment on the system's behavior.

4. **Poles and Zeros Analysis**:
   - Obtain the poles and zeros of the transfer function.
   - Relate these to the observations from the impulse response.

---

### Guidelines

- Submit a single Simulink model file (`invpendcart.slx`) containing:
  - The **non-linear model**
  - The **linearized model**
- Include a MATLAB file (`parameter.m`) defining the model parameters.
- Provide detailed steps for deriving the transfer function model.
- Include a plot of the impulse response and provide commentary on the output.

---

## Mathematical Model

In this section, the equations of motion for the inverted pendulum system are derived as part of the assignment for their implementation in MATLAB and Simulink.
### Free Body Diagrams and Equations of Motion (EOM)

#### Free Body Diagram of the Cart

The free body diagram of the cart is depicted follows:

<p align="center">
  <img src="" alt="Cart Free Body Diagram" width="1100">
</p>

#### Equations of Motion for the Cart

<p align="center">
  <img src="https://github.com/user-attachments/assets/556428e3-83af-4d7b-a266-b66fb9811b51" alt="Cart EOM" width="1100">
</p>

where:
- b is the coefficient of friction,
- P, R, N are the action-reaction forces,
- U is the external force applied.

#### Free Body Diagram of the Pendulum

The free body diagram of the pendulum is depicted as follows:

<p align="center">
  <img src="" alt="Pendulum Free Body Diagram" width="1100">
</p>

#### Equations of Motion for the Pendulum

- **Force in the x-direction**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/98101269-9c75-490e-b365-270e96870810" alt="Pendulum X-Direction" width="1100">
</p>

- **Force in the y-direction**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/66d365e2-3388-4fd3-bc03-ea425df5e8c2" alt="Pendulum Y-Direction" width="1100">
</p>

- **Moment about Point O**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/85cd6a30-3220-42a8-9e8c-0c7c0de5f95b" alt="Pendulum Moment" width="1100">
</p>

#### Substitution into EOMs

By substituting the force equations into the moment equation, the following equations of motion are obtained:

- **EOM 1**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/60b367c3-c406-4a28-abd3-df557ac22f7b" alt="EOM 1" width="1100">
</p>

- **EOM 2**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/79773f57-dd29-428c-a442-9674e8509edc" alt="EOM 2" width="1100">
</p>

These two equations are used in the **non-linear model**.

---

### Linearization

A linearized model is obtained by assuming small perturbations around θ = 0.

#### Linearization Assumptions

The following approximations are made:
<p align="center">
  <img src="https://github.com/user-attachments/assets/3c0d34ca-c456-4140-b26f-b094b3ac219f" alt="Linearization Assumptions" width="1100">
</p>

#### Linearized EOMs

- **Linearized EOM 1**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/a414b190-88dc-446e-b213-77d7257ed410" alt="Linearized EOM 1" width="1100">
</p>

- **Linearized EOM 2**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/5cb6a678-ff2a-47f6-b2e1-58175980195d" alt="Linearized EOM 2" width="1100">
</p>

---

### Transfer Function

The transfer function is derived by applying the **Laplace Transform** to the linearized EOMs.

#### Laplace Transform of EOMs

- Laplace transform of **EOM 1**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/d9306fe4-4ce7-4f57-aa11-29c686471053" alt="Laplace EOM 1" width="1100">
</p>

- Laplace transform of **EOM 2**:
<p align="center">
  <img src="https://github.com/user-attachments/assets/2e6e6e3b-74c0-479a-960d-4ba9d2b4ace6" alt="Laplace EOM 2" width="1100">
</p>

#### Solving for X(s)

<p align="center">
  <img src="https://github.com/user-attachments/assets/e39df454-3717-4c24-a45e-3635871bef56" alt="Solve for X(s)" width="1100">
</p>

Combining both equations, we get:

<p align="center">
  <img src="https://github.com/user-attachments/assets/0617c01b-8dfe-43f4-9cae-bc35bfcf9aad" alt="Combined EOMs" width="1100">
</p>

#### Final Transfer Function

Simplifying for φ(s)/U(s), we obtain:

<p align="center">
  <img src="https://github.com/user-attachments/assets/42e21e0d-9710-4294-a9df-74ef34c0fd7c" alt="Transfer Function" width="1100">
</p>

The organized form of the transfer function is as follows:

<p align="center">
  <img src="https://github.com/user-attachments/assets/7eb9f9d7-9273-4512-b01b-779e4b31f54b" alt="Final Transfer Function" width="1100">
</p>

---

## Repository Structure

This repository is organized as follows:

1. **`code/`**: Contains the MATLAB scripts for modeling, linearizing, and simulating the inverted pendulum system. 
   - Includes both nonlinear and linearized models.

2. **`figures/`**: Contains plots and visualizations of the system's behavior, including position, velocity, and control response.

3. **`report/`**: Contains the detailed report explaining the mathematical model, methodology, linearization process, and analysis of results.

4. **`README.md`**: Provides an overview of the project, its objectives, and instructions for running the simulations and generating results.

