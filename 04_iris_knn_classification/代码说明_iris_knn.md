# iris_knn.m 代码说明

## 目的

使用 KNN 对鸢尾花数据集进行分类，并对 3 条新样本进行物种预测。

## 核心流程

1. 加载 MATLAB 自带 `fisheriris` 数据集。
2. 使用 `cvpartition(species, 'HoldOut', 0.3)` 划分训练集和测试集。
3. 使用 `fitcknn` 训练 KNN 分类器。
4. 在测试集上预测类别并计算准确率。
5. 构造 3 条新样本并预测其类别。
6. 绘制原始样本和新样本的二维可视化图。
7. 保存图像和结果变量到 `results/`。

## 核心算法/技术点

- KNN / k 近邻分类
- Hold-out 训练/测试划分
- `fitcknn`
- `predict`
- 分类准确率计算
- 新样本预测与可视化

## 当前验证结果

已使用 MATLAB 批处理运行通过。

```text
Test accuracy: 95.56%
```

3 条新样本预测结果：

```text
setosa, versicolor, virginica
```

日志文件：

```text
run_logs/iris_knn_run.log
```

结果文件：

```text
results/iris_knn_result.mat
```

