# Iris 数据集可视化与 KNN 分类

本文件夹包含 3 个 MATLAB 脚本，用于对 MATLAB 自带 `fisheriris` 数据集进行二维/三维可视化，并使用 KNN 完成鸢尾花分类。

## 运行验证

验证时间：2026-07-01

复核时间：2026-07-02

验证环境：

- MATLAB R2023a
- `fisheriris` 数据集：150 条样本，4 个特征
- `fitcknn` 可用

验证结果：

| 文件 | 功能 | 运行结果 |
|---|---|---|
| `iris_classification2.m` | 二维散点图可视化 | 通过 |
| `iris_classification3.m` | 三维散点图可视化 | 通过 |
| `iris_knn.m` | KNN 分类与新样本预测 | 通过，测试准确率 `95.56%` |

2026-07-02 复核时，3 个脚本均已重新在 MATLAB batch 模式下运行通过；`results/` 中的 `.png` 与 `.mat` 输出文件均可正常生成和读取。

运行日志保存在：

```text
run_logs/
```

输出图像和结果变量保存在：

```text
results/
```

## 文件说明

- `iris_classification2.m`：绘制花萼长度与花萼宽度的二维类别散点图。
- `iris_classification3.m`：绘制花萼长度、花萼宽度、花瓣长度的三维类别散点图。
- `iris_knn.m`：使用 `fitcknn` 训练 KNN 模型，并预测测试集与 3 条新样本。
- `KNN2.jpg`、`KNN3.jpg`、`KNN_pre.jpg`：历史保存的可视化结果图片。

## 直接运行方式

在 MATLAB 中进入本文件夹后运行：

```matlab
run('iris_classification2.m')
run('iris_classification3.m')
run('iris_knn.m')
```

## 当前结果

KNN 设置：

```text
k = 5
HoldOut = 0.3
```

测试集准确率：

```text
95.56%
```

新样本预测结果：

```text
setosa, versicolor, virginica
```
