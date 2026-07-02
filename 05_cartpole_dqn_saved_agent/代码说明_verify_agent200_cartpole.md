# `verify_agent200_cartpole.m` 代码说明

## 代码目的

验证 `savedAgents/Agent200.mat` 中保存的 CartPole DQN agent 是否可以正常加载，并能否在 MATLAB 自带 `CartPole-Discrete` 环境中完成一次仿真。

## 核心流程

1. 固定随机种子 `rng(1)`，提高复测稳定性。
2. 使用相对路径定位 `savedAgents/Agent200.mat` 和 `results/`。
3. 加载 `saved_agent` 变量。
4. 使用 `rlPredefinedEnv('CartPole-Discrete')` 创建 CartPole 离散动作环境。
5. 使用 `sim` 对 agent 进行最多 500 步仿真。
6. 统计仿真步数 `steps` 和总奖励 `totalReward`。
7. 将验证结果保存到 `results/agent200_sim_check.mat`。

## 技术要点

- 算法对象：`rl.agent.rlDQNAgent`
- 环境：CartPole 离散动作控制任务
- 状态空间：4 维，包含位置、速度、杆角度、角速度
- 动作空间：离散力输入 `[-10, 10]`
- 验证重点：证明保存的 agent 文件不仅能读取，也能与对应强化学习环境交互运行。

## 注意事项

该脚本不是原始训练脚本，不会重新训练 DQN agent；它只用于验证已保存 agent 的可用性。
