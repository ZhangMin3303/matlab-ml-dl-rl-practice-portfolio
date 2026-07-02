# `savedAgents/` 资料说明

## 内容概览

公开版 `savedAgents/` 只保留 CartPole 强化学习训练过程中的代表性 DQN agent checkpoint：`Agent200.mat`。

本地完整归档中的文件命名形式：

```text
Agent108.mat
Agent109.mat
Agent122.mat
...
Agent200.mat
```

## 文件结构

每个 `.mat` 文件均包含：

- `saved_agent`：保存下来的 DQN agent，类型为 `rl.agent.rlDQNAgent`
- `savedAgentResult`：训练结果记录，类型为 `rl.train.rlTrainingResult`

`savedAgentResult` 中包含 episode reward、episode steps、average reward、total agent steps、EpisodeQ0 和训练选项等信息。

## 完整性检查

检查时间：2026-07-02

- 本地完整归档文件数量：81
- 公开版文件数量：1
- 编号范围：`108-200`
- 缺失编号：`110-121`
- MATLAB 读取失败数量：0
- 统一 agent 类型：`rl.agent.rlDQNAgent`

详细清单见：

```text
results/saved_agents_inventory.csv
```

## 使用建议

- GitHub 展示版已按该原则只保留 `Agent200.mat`，其余 checkpoint 留在本地完整归档中。
- 若用于面试说明，应强调当前保留的是训练结果和 checkpoints，原始训练脚本仍需补找或重建。
- 若之后找到训练脚本，应补充训练环境、网络结构、reward 曲线、停止条件和超参数说明。
