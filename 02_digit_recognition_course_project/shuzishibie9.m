clc; clear; close all;
rng(1); % 固定随机种子，便于复现实验结果
% 加载数据集
scriptDir = fileparts(mfilename('fullpath'));
dataDir = fullfile(scriptDir, 'data');
load(fullfile(dataDir, 'data0.mat'));
load(fullfile(dataDir, 'data1.mat'));
load(fullfile(dataDir, 'data2.mat'));
load(fullfile(dataDir, 'data3.mat'));
load(fullfile(dataDir, 'data4.mat'));
load(fullfile(dataDir, 'data5.mat'));
load(fullfile(dataDir, 'data6.mat'));
load(fullfile(dataDir, 'data7.mat'));
load(fullfile(dataDir, 'data8.mat'));
load(fullfile(dataDir, 'data9.mat'));
load(fullfile(dataDir, 'data1_noisy.mat'));
load(fullfile(dataDir, 'data2_noisy.mat'));
% 1. 读取标准数字和噪声数字的数据  
data0 = zero;  
data1 = array_one;  
data2 = array_two;  
data3 = three;  
data4 = four;  
data5 = five;  
data6 = six;  
data7 = seven;  
data8 = eight;  
data9 = nine;  

data1_noisy = noisy_array_one;  
data2_noisy = noisy_array_two;  

% 将数据转换为列向量形式
x0 = reshape(data0', 1, 100);
x1 = reshape(data1', 1, 100);
x2 = reshape(data2', 1, 100);
x3 = reshape(data3', 1, 100);
x4 = reshape(data4', 1, 100);
x5 = reshape(data5', 1, 100);
x6 = reshape(data6', 1, 100);
x7 = reshape(data7', 1, 100);
x8 = reshape(data8', 1, 100);
x9 = reshape(data9', 1, 100);
x11 = reshape(data1_noisy', 1, 100);
x21 = reshape(data2_noisy', 1, 100);

%首先，将12个输入矩阵和对应的输出标签进行存储
data = [x0;x1;x2; x3; x4; x5; x6; x7; x8; x9; x11; x21];
data = reshape(data, [1, 100, 1, 12]);
labels = categorical({'0'; '1'; '2'; '3'; '4';'5'; '6'; '7'; '8'; '9'; '11'; '21'});
%定义一个包含32个神经元的全连接层作为中间层，并使用ReLU激活函数进行非线性变换
% 输出层是一个具有12个节点的全连接层，使用softmax激活函数计算每个类别的概率
% 最后，使用分类层对输出进行多类别分类
layers = [
    imageInputLayer([1 100 1])
    fullyConnectedLayer(32)
    reluLayer
    fullyConnectedLayer(12)
    softmaxLayer
    classificationLayer];
%接下来,使用trainNetwork函数对模型进行训练
% 使用随机梯度下降（SGD）优化器和交叉熵损失函数进行训练
options = trainingOptions('sgdm', ...
    'MaxEpochs', 100, ...
    'MiniBatchSize', 10, ...
    'Verbose', false, ...
    'Plots', 'none');
net = trainNetwork(data, labels, layers, options);

%评估：使用classify函数获取测试数据的预测标签，并计算准确率
testData = [x0; x1; x2;x3; x4; x5; x6; x7; x8; x9; x11; x21];
testData = reshape(testData, [1, 100, 1, 12]);
testLabels = categorical({'0'; '1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '11'; '21'});

predictedLabels = classify(net, testData);
accuracy = sum(predictedLabels == testLabels) / numel(testLabels);
disp(['Accuracy: ', num2str(accuracy * 100), '%']);
