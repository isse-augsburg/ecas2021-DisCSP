# Constraint Satisfaction Models for Task Allocation in Self-organizing Manufacturing Cells

This repository contains the replication package for the paper "Distributed Constraint Optimization for Decentral Control in Self-Organizing Manufacturing Systems" submitted to the ECAS workshop 2021.

In the frodo directory, you'll find the files needed to run the distributed model using the [FRODO framework](https://frodo-ai.tech/).

In the minizinc directory, you'll find the files needed to run the central model using [MiniZinc](https://www.minizinc.org/).

We provide the necessary files to run the 9 configurations (a-i) from the paper for both models. Please refer to the readmes in the respective directory for further instructions.

## Requirements
- [MiniZinc](https://www.minizinc.org/) (tested with version 2.5.5, Gecode is installed with MiniZinc)
- Java (tested with Java 11)
- [FRODO framework](https://frodo-ai.tech/) (tested with version 2.17.1)