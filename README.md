# Learning a Quadcopter flip
Project for Intelligent Control 2025-2026 class at ECE UPatras. The objective is to create an agent that will be able to perform a 360 flip around the pitch axis while maintaining altitude.

The simulation environment is a git subtree of [this repo](https://github.com/upatras-lar/Quadcopter_SimCon), maintained as a fork by the Laboratory of Automation and Robotics at the Electrical and Computer Engineering Department of the University of Patras.

# Setup
In the repository root, run:
```bash
./setup.sh
```
This creates a virtual environment, installs all PyPI dependencies from `requirements.txt`. It also includes `quadcopter-sim/Simulation/` in the Python path by creating a `.pth` file in the virtual environment's `site-packages`.