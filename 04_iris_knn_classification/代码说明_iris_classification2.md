# iris_classification2.m 代码说明

## 目的

使用 MATLAB 自带 `fisheriris` 数据集，绘制鸢尾花样本在花萼长度和花萼宽度两个特征上的二维分布。

## 核心流程

1. 加载 `fisheriris` 数据集。
2. 提取 `meas(:,1)` 作为花萼长度。
3. 提取 `meas(:,2)` 作为花萼宽度。
4. 使用 `gscatter` 按物种类别绘制二维散点图。
5. 将图像保存到 `results/iris_2d_scatter.png`。
6. 将绘图数据保存到 `results/iris_2d_scatter_data.mat`。

## 核心技术点

- MATLAB 内置数据集 `fisheriris`
- 二维散点图
- 按类别着色可视化
- `gscatter`

## 验证状态

已使用 MATLAB 批处理运行通过。日志文件：

```text
run_logs/iris_classification2_run.log
```

