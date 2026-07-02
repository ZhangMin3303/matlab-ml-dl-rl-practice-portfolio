# 数字识别课设

本文件夹是一个基于 MATLAB 的神经网络数字识别课程项目。项目使用 10x10 手写/人工数字矩阵作为输入，通过简单全连接神经网络完成 0-9 以及带噪声数字样本的分类。

## 运行验证

验证时间：2026-07-01

验证方式：使用 MATLAB 批处理分别运行主脚本和备份脚本。

结果：

| 文件 | 运行结果 | 输出结果 |
|---|---|---|
| `shuzishibie9.m` | 通过 | `Accuracy: 83.3333%` |
| `code/shuzishibie99.m` | 通过 | `Accuracy: 83.3333%` |

运行日志保存在：

```text
run_logs/
```

## 文件结构

```text
.
├── shuzishibie9.m
├── code/
│   └── shuzishibie99.m
├── data/
│   ├── data0.mat
│   ├── data1.mat
│   ├── data1_noisy.mat
│   ├── data2.mat
│   ├── data2_noisy.mat
│   ├── data3.mat
│   ├── data4.mat
│   ├── data5.mat
│   ├── data6.mat
│   ├── data7.mat
│   ├── data8.mat
│   └── data9.mat
└── run_logs/
```

## 关键修复

- 将原脚本中的本机桌面绝对路径改为项目内相对路径。
- 将训练过程中的图形窗口 `training-progress` 改为 `Plots = none`，便于批处理运行。
- 修正准确率计算中的标签向量形状问题，使 `Accuracy` 输出为单个标量。
- 固定随机种子 `rng(1)`，提升结果复现性。

## 直接运行方式

在 MATLAB 中进入本文件夹后运行：

```matlab
run('shuzishibie9.m')
```

也可以进入 `code/` 子文件夹后运行：

```matlab
run('shuzishibie99.m')
```

## 说明

`shuzishibie9.m` 和 `code/shuzishibie99.m` 内容基本相同，后者保留为历史备份/原始整理版本。

原始课程报告和原始数据压缩包未包含在公开仓库中。当前代码经过路径、批处理运行和准确率计算等可复现性修复。具体见：

```text
代码修复记录.md
```
