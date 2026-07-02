# CartPole Reinforcement Learning Saved Agents

本文件夹保存的是 MATLAB Reinforcement Learning Toolbox 的 CartPole 强化学习训练结果公开版。为了让 GitHub 仓库保持轻量，只保留代表性的 `Agent200.mat`；本地完整归档中的其他 checkpoint 未公开上传。

## 运行验证

验证时间：2026-07-02

验证环境：

- MATLAB R2023a
- Reinforcement Learning Toolbox 2.4
- Deep Learning Toolbox 14.6
- `rlPredefinedEnv('CartPole-Discrete')` 可用

验证结果：

| 文件或目录 | 内容 | 验证结果 |
|---|---|---|
| `cartpole.png` | Cart Pole Visualizer 截图 | 可打开，尺寸 `904 x 347` |
| `savedAgents/Agent200.mat` | 代表性 DQN saved agent | 可加载，并可在 CartPole 环境中仿真 |
| `verify_agent200_cartpole.m` | 本次新增的 agent 验证脚本 | MATLAB batch 模式运行通过 |

## 当前结论

- 当前项目是 **CartPole DQN 训练结果归档**，不是完整训练源码项目。
- 本地完整归档中所有 saved agent 文件均能正常加载；公开版仅保留 `Agent200.mat`。
- `Agent200.mat` 包含 `saved_agent` 与 `savedAgentResult` 两个变量，其中 `savedAgentResult` 记录了 200 个 episode 的训练指标。
- 本地完整归档中的 saved agent 编号范围为 `108-200`，但 `110-121` 缺失；这更像是训练过程中只保存部分 checkpoint，不代表现有文件损坏。
- `Agent200` 在 MATLAB 自带 `CartPole-Discrete` 环境中完成仿真验证，最新复测总奖励为 `177.0000`。

## 直接运行方式

在 MATLAB 中进入本文件夹后运行：

```matlab
run('verify_agent200_cartpole.m')
```

该脚本会加载：

```text
savedAgents/Agent200.mat
```

并输出：

```text
results/agent200_sim_check.mat
```

## 文件说明

- `cartpole.png`：CartPole 可视化窗口截图，用于展示环境和训练对象。
- `savedAgents/Agent200.mat`：公开版保留的代表性 DQN agent checkpoint。
- `verify_agent200_cartpole.m`：本次整理时新增的验证脚本，用于确认最终 agent 可加载、可仿真。
- `results/saved_agents_inventory.csv`：saved agents 文件清单，包括文件名、编号、大小和修改时间。
- `results/agent200_training_metrics.csv`：从 `Agent200.mat` 的 `savedAgentResult` 导出的 episode 级训练指标。
- `results/agent200_sim_check.mat`：`Agent200` 仿真验证结果。
- `run_logs/`：本次整理和验证过程的运行日志。

## 面试表述建议

这个项目可以表述为：使用 MATLAB Reinforcement Learning Toolbox 对 CartPole 控制任务进行了 DQN 训练，并保存了训练过程中的 agent checkpoints。当前资料保留了训练结果、最终 agent、训练指标和仿真验证脚本；后续如果找到原始训练脚本，可以补全为完整可复现实验项目。
