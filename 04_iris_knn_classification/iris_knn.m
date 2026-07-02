clear; clc; close all;
rng(1); % 固定随机种子，保证训练/测试划分可复现

resultsDir = fullfile(fileparts(mfilename('fullpath')), 'results');
if ~isfolder(resultsDir)
    mkdir(resultsDir);
end

% 加载鸢尾花数据集
load fisheriris;

% 将数据集划分为训练集和测试集
cv = cvpartition(species, 'HoldOut', 0.3);
idx = cv.test;

% 训练集数据
trainData = meas(~idx,:);
trainLabels = species(~idx);

% 测试集数据
testData = meas(idx,:);
testLabels = species(idx);

% 设置k值（近邻数）
k = 5;

% 使用fitcknn函数训练k近邻模型
knnModel = fitcknn(trainData, trainLabels, 'NumNeighbors', k);

% 使用训练好的模型进行预测
predictedLabels = predict(knnModel, testData);

% 计算分类准确率
accuracy = sum(strcmp(predictedLabels, testLabels)) / numel(testLabels);
fprintf('Test accuracy: %.2f%%\n', accuracy * 100);

% 创建新的鸢尾花数据
newData = [
    5.1, 3.5, 1.4, 0.2;  % 第一朵花的测量数据
    6.2, 2.9, 4.3, 1.3;  % 第二朵花的测量数据
    7.2, 3.6, 6.4, 2.1   % 第三朵花的测量数据
];

% 设置k值（近邻数）
k = 5;

% 使用训练好的模型进行预测
predictedLabelsNew = predict(knnModel, newData);

% 可视化新的数据点
figure;
gscatter(meas(:,1), meas(:,2), species, 'rgb', '.');
hold on;
plot(newData(:,1), newData(:,2), 'k^', 'MarkerSize', 10, 'LineWidth', 2);
text(newData(:,1), newData(:,2), predictedLabelsNew, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
legend('setosa', 'versicolor', 'virginica', 'New Data', 'Location', 'best');
xlabel('Sepal Length');
ylabel('Sepal Width');
title('分类结果可视化');
hold off;

exportgraphics(gcf, fullfile(resultsDir, 'iris_knn_prediction.png'), 'Resolution', 150);
save(fullfile(resultsDir, 'iris_knn_result.mat'), ...
    'accuracy', 'k', 'knnModel', 'predictedLabels', 'testLabels', ...
    'newData', 'predictedLabelsNew');
