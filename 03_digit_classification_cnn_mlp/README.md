# MATLAB DigitDataset 数字分类 demo：CNN 与 MLP

本文件夹包含两个基于 MATLAB 自带 `DigitDataset` 的手写数字分类 demo：

- `mlp_shuzishibie.m`：全连接神经网络/MLP 基线模型
- `cnn_tuxiangfenlei.m`：卷积神经网络/CNN 模型

数据来自 MATLAB 安装目录：

```text
fullfile(matlabroot, 'toolbox', 'nnet', 'nndemos', 'nndatasets', 'DigitDataset')
```

## 历史运行记录

以下准确率与结果是已有历史记录；2026-10-28 未重跑 CNN/MLP 训练，也未复核数据切分、多种子稳定性或方法间公平比较。不得作为本轮新验证或稳定提升的结论。

验证时间：2026-07-01

验证环境：

- MATLAB R2023a
- Deep Learning Toolbox 14.6
- DigitDataset：10000 张图片

验证结果：

| 文件 | 模型 | 运行结果 | 测试集准确率 |
|---|---|---|---|
| `mlp_shuzishibie.m` | MLP / 全连接神经网络 | 通过 | `75.48%` |
| `cnn_tuxiangfenlei.m` | CNN / 卷积神经网络 | 通过 | `99.32%` |

运行日志保存在：

```text
run_logs/
```

结果变量保存在：

```text
results/
```

## 文件说明

- `mlp_shuzishibie.m`：使用全连接层、ReLU 和 Softmax 进行 10 类手写数字分类。
- `cnn_tuxiangfenlei.m`：使用卷积层、Batch Normalization、ReLU、Max Pooling 和全连接层进行 10 类手写数字分类。
- `CNN_acc.png`：历史保存的 CNN 训练/准确率相关截图。
- `results/*.mat`：保存本次验证运行后的准确率、预测标签和测试标签。

## 直接运行方式

在 MATLAB 中进入本文件夹后运行：

```matlab
run('mlp_shuzishibie.m')
run('cnn_tuxiangfenlei.m')
```

## 结论

这些历史输出可帮助讲解 CNN/MLP 的课程实现。当前记录不足以证明稳定的模型优劣或泛化收益；本项目仅作基础深度学习练习展示。

