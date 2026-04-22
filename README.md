# Hospital Robotic Simulation

This repository is part of a bachelor thesis project focused on building a simulated service robot scenario in a hospital environment.

The project is based on an existing hospital world and is being adapted for use with modern Gazebo (`gz sim`) and ROS 2.

---

## Project goal

The goal is to build and evaluate a simulated care-service robot scenario in a hospital-like environment, including:

* hospital world simulation
* robot navigation
* object delivery workflow
* later manipulation and task execution

---

## Repository structure

```text
hospital-robotic-simulation/
├── worlds/                 # Gazebo world files
├── models/                 # Local models
├── photos/                 # Textures used in the world
├── docs/                   # Notes and diagrams
├── ros2_ws/                # ROS 2 workspace (to be extended)
│   └── src/
│       ├── hospital_bringup/
│       ├── hospital_navigation/
│       ├── hospital_manipulation/
│       ├── hospital_interfaces/
│       └── hospital_tasks/
├── config/                 # Configuration files (Nav2, RViz, etc.)
├── bootstrap.sh            # Setup script
├── run.sh                  # Start simulation
├── setup.sh                # Downloads required models
├── requirements.txt        # Python dependencies
└── README.md
```

---

## Requirements

* Ubuntu 24.04 (WSL works)
* Python 3
* Git
* Gazebo with `gz sim`

---

## Installation

Clone the repository:

```bash
git clone git@github.com:levent9000/hospital-robotic-simulation.git
cd hospital-robotic-simulation
```

Run the setup script:

```bash
./bootstrap.sh
```

This will create a virtual environment, install Python dependencies, and download all required models.

---

## Running the simulation

Start the hospital world:

```bash
./run.sh
```

This will configure the environment and launch the simulation using `gz sim`.

---

## Acknowledgment

This project is based on:

* AWS RoboMaker Hospital World
  https://github.com/aws-robotics/aws-robomaker-hospital-world

The original project provides the hospital simulation environment.
This work adapts and extends it for use with ROS 2 and modern tools.

---

## Status

* hospital world runs successfully
* repository structure prepared
* ROS 2 integration in progress
