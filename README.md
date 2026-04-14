

# Physics Simulation

This project is a simple 2D physics simulation written in C++ using the SFML graphics library. The simulation demonstrates the motion of particles under the influence of gravitational sources.

## Features

- Multiple gravity sources, each with configurable position and strength.
- Hundreds or thousands of particles, each affected by all gravity sources.
- Real-time visualization using SFML.
- Color gradient for particles based on their index.

## Demo

![Demo](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExdGpnb3hldXc3dGduM25xNTdmem1vM2Zzem51OHJueWVtazB4ODFsdyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Z1lsQp1AG9gzXWRyAf/giphy.gif)

## Algorithm Overview

**Initialization**:

- Gravity sources are created at specified positions with a given strength.
- A large number of particles are initialized at a starting position with varying initial velocities and colors.

**Physics Update (per frame)**:

- For each gravity source and each particle:
  - Compute the distance vector between the particle and the gravity source.
  - Calculate the Euclidean distance using the Pythagorean theorem:
     $$(d = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2})$$
  - Normalize the distance vector to get the direction of the force.
  - Compute the gravitational acceleration using an inverse-square law:
     $$(a = \frac{G \cdot M}{d^2})$$
     where $G$ is the gravity source's strength and $d$ is the distance.
  - Update the particle's velocity and position based on the calculated acceleration.

**Rendering**:

- Each gravity source and particle is rendered to the window.
- Particle colors are mapped along a gradient for visual effect.

## How to Build

1. Make sure you have SFML installed on your system.
2. Run `make build` to compile the project.
3. Run the resulting executable to start the simulation.

## File Structure

- `main.cpp`: Entry point and main simulation loop.
- `src/headers/GravitySource.hpp`: Defines the gravity source class.
- `src/headers/Particle.hpp`: Defines the particle class and physics update logic.

## License

This project is for educational purposes.