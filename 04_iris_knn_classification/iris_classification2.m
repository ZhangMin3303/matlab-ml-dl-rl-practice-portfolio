clear; clc; close all;

resultsDir = fullfile(fileparts(mfilename('fullpath')), 'results');
if ~isfolder(resultsDir)
    mkdir(resultsDir);
end

% 导入IRIS数据集
load fisheriris;

% 提取花萼长度和花萼宽度数据
sepallength = meas(:,1);
sepalwidth = meas(:,2);

% 创建散点图
scatter(sepallength, sepalwidth);
xlabel('Sepal Length');
ylabel('Sepal Width');
title('Distribution of Sepal Length vs. Sepal Width');

% 添加类别颜色
gscatter(sepallength, sepalwidth, species, 'rgb', '.', 8);

% 添加图例
legend('Location', 'best');
grid on;

exportgraphics(gcf, fullfile(resultsDir, 'iris_2d_scatter.png'), 'Resolution', 150);
save(fullfile(resultsDir, 'iris_2d_scatter_data.mat'), ...
    'sepallength', 'sepalwidth', 'species');
