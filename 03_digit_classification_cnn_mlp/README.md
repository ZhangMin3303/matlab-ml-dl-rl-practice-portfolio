# MATLAB DigitDataset 数字分类 demo：CNN 与 MLP

本文件夹包含两个基于 MATLAB 自带 `DigitDataset` 的手写数字分类 demo：

- `mlp_shuzishibie.m`：全连接神经网络/MLP 基线模型
- `cnn_tuxiangfenlei.m`：卷积神经网络/CNN 模型

数据来自 MATLAB 安装目录：

```text
D:\MATLAB\toolbox\nnet\nndemos\nndatasets\DigitDataset
```

## 运行验证

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

CNN 明显优于简单 MLP，说明卷积结构能够更好地利用图像的局部空间特征。这个项目适合作为“基础深度学习图像分类实践”的课程项目材料。

