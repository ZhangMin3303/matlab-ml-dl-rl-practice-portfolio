# cnn_tuxiangfenlei.m 代码说明

## 目的

使用 MATLAB 自带 `DigitDataset` 训练一个 CNN/卷积神经网络，对 0-9 手写数字图片进行分类。

## 核心流程

1. 从 MATLAB 自带路径加载 `DigitDataset`。
2. 使用 `imageDatastore` 构建图像数据集。
3. 每类取 750 张图片作为训练集，其余作为测试集。
4. 构建 CNN 网络：
   - 图像输入层
   - 5x5 卷积层
   - Batch Normalization
   - ReLU
   - Max Pooling
   - 全连接层
   - Softmax 分类层
5. 使用 SGDM 优化器训练 4 个 epoch。
6. 在测试集上计算分类准确率。

## 核心算法/技术点

- CNN / 卷积神经网络
- 卷积特征提取
- Batch Normalization
- ReLU 激活函数
- Max Pooling
- Softmax 多分类
- MATLAB `trainNetwork`

## 当前验证结果

已使用 MATLAB 批处理运行通过。

输出：

```text
Test accuracy: 99.32%
```

日志文件：

```text
run_logs/cnn_tuxiangfenlei_run.log
```

结果文件：

```text
results/cnn_digit_classification_result.mat
```

## 结论

CNN 模型能有效学习图像局部结构特征，测试准确率明显高于 MLP 基线。

