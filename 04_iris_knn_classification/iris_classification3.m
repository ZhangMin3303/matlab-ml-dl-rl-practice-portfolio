clear; clc; close all;

resultsDir = fullfile(fileparts(mfilename('fullpath')), 'results');
if ~isfolder(resultsDir)
    mkdir(resultsDir);
end

% 导入IRIS数据集
load fisheriris;

% 提取花萼长度、花萼宽度和花瓣长度数据
sepallength = meas(:,1);
sepalwidth = meas(:,2);
petallength = meas(:,3);

% 根据鸢尾花类型进行分类
setosaIndices = strcmp(species, 'setosa');
versicolorIndices = strcmp(species, 'versicolor');
virginicaIndices = strcmp(species, 'virginica');

% 创建三维散点图
figure;
scatter3(sepallength(setosaIndices), sepalwidth(setosaIndices), petallength(setosaIndices), 'r', 'filled');
hold on;
scatter3(sepallength(versicolorIndices), sepalwidth(versicolorIndices), petallength(versicolorIndices), 'g', 'filled');
scatter3(sepallength(virginicaIndices), sepalwidth(virginicaIndices), petallength(virginicaIndices), 'b', 'filled');

% 设置图形属性
xlabel('Sepal Length');
ylabel('Sepal Width');
zlabel('Petal Length');
title('IRIS Dataset- 3D Distribution with Species Differentiation');
legend('setosa', 'Versicolor', 'Virginica', 'Location', 'northoutside', 'Orientation', 'horizontal');
grid on;
hold off;

exportgraphics(gcf, fullfile(resultsDir, 'iris_3d_scatter.png'), 'Resolution', 150);
save(fullfile(resultsDir, 'iris_3d_scatter_data.mat'), ...
    'sepallength', 'sepalwidth', 'petallength', 'species');
