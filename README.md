# MATLAB ML/DL/RL Practice Portfolio

> A transparent, curated collection of MATLAB practice projects for machine learning, deep learning, and reinforcement learning.

## Overview

This repository is a public, privacy-safe, and slimmed-down version of my MATLAB practice portfolio. It is not presented as a large research project. Instead, it documents a set of course exercises and learning projects that helped me build foundations in neural networks, classification, computer vision basics, and reinforcement learning workflows.

本仓库是 MATLAB 机器学习、深度学习与强化学习练习项目集合，用于归纳管理课程练习、代码整理、运行验证和学习复盘。它不是大型科研项目，而是一个透明的能力补充材料。

## Included Projects

| Folder | Topic | Status |
|---|---|---|
| `01_perceptron_basics` | Single-layer perceptron and neural network basics | MATLAB scripts checked and documented |
| `02_digit_recognition_course_project` | Custom digit recognition course project | Code, local data, run logs, and repair notes included; original report/zip excluded |
| `03_digit_classification_cnn_mlp` | MATLAB built-in DigitDataset CNN and MLP demos | CNN/MLP scripts checked; training results documented |
| `04_iris_knn_classification` | Iris dataset visualization and KNN classification | Scripts, visual results, and logs included |
| `05_cartpole_dqn_saved_agent` | CartPole DQN saved-agent verification | Only representative `Agent200.mat` is included; full checkpoint archive excluded |

## Provenance and current validation boundary

These are coursework and learning exercises, using reference implementations and AI help for questions, checking and debugging. They are not separate original research projects. `NNA_class1_2.m` and `class1_2.m` are identical-source variants and are counted once.

The [AI selection-task portfolio](https://github.com/ZhangMin3303/ai-intelligent-systems-practice-portfolio) links to this canonical foundational-practice entry. It is the same learning work and is counted once.

Existing logs and numerical values are historical. The 2026-10-28 maintenance review did not retrain these CNN/MLP models or load/simulate the saved CartPole agent. A saved agent and simulation script do not establish authorship of the missing DQN training source. Source attribution and redistribution permissions still need per-item clarification; no blanket license is assigned here.

## What This Repository Demonstrates

- MATLAB scripting for small ML/DL/RL experiments.
- Basic neural network and perceptron training logic.
- Digit recognition workflow with local `.mat` data.
- CNN and MLP image classification using MATLAB's built-in DigitDataset.
- KNN classification and visualization on the Iris dataset.
- Reinforcement Learning Toolbox saved-agent loading and simulation verification.
- Documentation discipline: each project contains concise notes, run logs, and known limitations.

## Privacy and Scope

This is a curated public version. The following materials are intentionally excluded:

- Original course reports that may contain names, student IDs, class information, or grading metadata.
- Compressed archives such as `.zip` or `.rar` when their contents are redundant or privacy-sensitive.
- Friend/reference project material.
- Large or repeated intermediate checkpoint files.
- Personal local paths and private machine-specific artifacts.

See [PUBLICATION_NOTES.md](PUBLICATION_NOTES.md) for details.

## Environment

The historical checks used MATLAB R2023a. They are not a new full rerun during the current maintenance review. Some scripts require specific toolboxes:

- Deep Learning Toolbox
- Statistics and Machine Learning Toolbox
- Reinforcement Learning Toolbox

Each project folder contains its own README and run logs where applicable.

## How to Use

Clone the repository, open MATLAB, enter a project folder, and run the relevant `.m` scripts described in that folder's README.

Example:

```matlab
cd 04_iris_knn_classification
run('iris_knn.m')
```

## Repository Philosophy

This repository is meant to be honest and useful: it shows what I practiced, what was fixed, what was verified, and what limitations remain. It is a learning portfolio and a supplement to more complete engineering or research projects.

