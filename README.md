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
* ROS 2 (Jazzy)
---

## Installation

Fresh installation guide on Windows

1. Create a fresh Ubuntu 24.04 WSL
```bash
wsl --install -d Ubuntu-24.04
```
2. Update the system
```bash
sudo apt update && sudo apt upgrade -y
```
3. Install basic tools
```bash
sudo apt install -y git curl wget build-essential python3 python3-venv python3-pip
```

### ROS 2 Jazzy installation

Reference:
https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debs.html#

1. Enable required repository support
```bash
sudo apt install software-properties-common
sudo add-apt-repository universe
```
2. Add the ROS 2 apt source
```bash
sudo apt update && sudo apt install curl -y
export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F'"' '{print $4}')
curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb"
sudo dpkg -i /tmp/ros2-apt-source.deb
```
3. Install ROS 2 Jazzy
```bash
sudo apt update
sudo apt upgrade
sudo apt install ros-jazzy-desktop
```
4. Source ROS 2 automatically
```bash
source /opt/ros/jazzy/setup.bash
echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

### Gazebo installation

Reference:
https://gazebosim.org/docs/all/ros_installation/

1. Install Gazebo support for ROS 2 Jazzy:
```bash
sudo apt install -y ros-jazzy-ros-gz
source /opt/ros/jazzy/setup.bash
source ~/.bashrc
```
### Git

1. Clone the repository:

```bash
git clone https://github.com/levent9000/hospital-robotic-simulation.git
cd hospital-robotic-simulation
```

2. Run the setup script:

```bash
./bootstrap.sh
```

This will create a virtual environment, install Python dependencies, and download all required models.

3. Start the hospital world:

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
