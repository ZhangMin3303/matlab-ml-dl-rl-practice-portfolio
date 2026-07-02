# iris_classification3.m 代码说明

## 目的

使用 MATLAB 自带 `fisheriris` 数据集，绘制鸢尾花样本在三个特征维度上的三维类别分布。

## 核心流程

1. 加载 `fisheriris` 数据集。
2. 提取花萼长度、花萼宽度和花瓣长度。
3. 根据 `species` 将样本分成 `setosa`、`versicolor`、`virginica` 三类。
4. 使用 `scatter3` 分别绘制三类样本。
5. 将图像保存到 `results/iris_3d_scatter.png`。
6. 将绘图数据保存到 `results/iris_3d_scatter_data.mat`。

## 核心技术点

- 三维散点图
- 类别索引筛选
- 多类别数据可视化
- `scatter3`

## 验证状态

已使用 MATLAB 批处理运行通过。日志文件：

```text
run_logs/iris_classification3_run.log
```

