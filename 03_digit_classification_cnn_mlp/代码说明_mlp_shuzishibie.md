# mlp_shuzishibie.m 代码说明

## 目的

使用 MATLAB 自带 `DigitDataset` 训练一个简单的 MLP/全连接神经网络，对 0-9 手写数字图片进行分类。

## 核心流程

1. 从 MATLAB 自带路径加载 `DigitDataset`。
2. 使用 `imageDatastore` 按文件夹名自动生成标签。
3. 每类取 750 张图片作为训练集，其余作为测试集。
4. 构建全连接神经网络：
   - `imageInputLayer`
   - `fullyConnectedLayer`
   - `reluLayer`
   - `fullyConnectedLayer`
   - `softmaxLayer`
   - `classificationLayer`
5. 使用 Adam 优化器训练 4 个 epoch。
6. 在测试集上计算分类准确率。

## 核心算法/技术点

- MLP / 全连接神经网络
- ReLU 激活函数
- Softmax 多分类
- Adam 优化器
- MATLAB `imageDatastore`
- MATLAB `trainNetwork`

## 当前验证结果

已使用 MATLAB 批处理运行通过。

输出：

```text
Test accuracy: 75.48%
```

日志文件：

```text
run_logs/mlp_shuzishibie_run.log
```

结果文件：

```text
results/mlp_digit_classification_result.mat
```

## 注意事项

MLP 没有卷积结构，不能很好利用图像局部空间特征，因此准确率明显低于 CNN。它适合作为 CNN 的对照基线。

