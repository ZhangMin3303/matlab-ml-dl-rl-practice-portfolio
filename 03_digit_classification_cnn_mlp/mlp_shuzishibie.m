clear; clc; close all;
rng(1); % 固定随机种子，便于复现实验结果

% 加载数据
digitDatasetPath = fullfile(matlabroot,'toolbox','nnet','nndemos',...
'nndatasets','DigitDataset');
if ~isfolder(digitDatasetPath)
    error('DigitDataset not found: %s', digitDatasetPath);
end
digitData = imageDatastore(digitDatasetPath,...
'IncludeSubfolders',true,'LabelSource','foldernames');

% 分割数据
trainNumFiles = 750;
[trainDigitData,testDigitData] = splitEachLabel(digitData,trainNumFiles,'randomize');

% 定义网络结构
inputSize = 784; % 28x28; 因为手写数字图像是28x28像素的
numHiddenUnits = 100; % 隐藏层的神经元数量
numClasses = 10; % 手写数字类别, 0-9
layers = [
imageInputLayer([28 28 1]) % 输入层, 接收28x28的图像
fullyConnectedLayer(numHiddenUnits) % 全连接层, 隐藏层的神经元数量为numHiddenUnits
reluLayer() % ReLU激活函数层
fullyConnectedLayer(numClasses) % 全连接层, 输出层的神经元数量为numClasses
softmaxLayer() % Softmax层, 用于输出每个类别的概率
classificationLayer() % 分类层, 输出预测的类别
];

% 设置训练参数
options = trainingOptions('adam',... % 使用Adam优化器，适合该MLP基线快速收敛
'MaxEpochs',4,... % 最大迭代次数为4
'InitialLearnRate',0.001,... % 初始学习率为0.001
'Shuffle','every-epoch', ... % 每个epoch重新打乱数据集
'ValidationData',testDigitData,... % 测试集作为验证数据, 用于调整学习率和早停
'ValidationFrequency',30,... % 每30个epoch验证一次
'Verbose',false,... % 不显示训练过程中的信息
'Plots','none'); % 批处理验证时不打开训练窗口

% 训练模型
net = trainNetwork(trainDigitData,layers,options);

% 测试模型
YPred = classify(net,testDigitData);
YTest = testDigitData.Labels;
accuracy = sum(YPred == YTest)/numel(YTest); % 计算准确率
fprintf('Test accuracy: %.2f%%\n', accuracy*100);

resultsDir = fullfile(fileparts(mfilename('fullpath')), 'results');
if ~isfolder(resultsDir)
    mkdir(resultsDir);
end
save(fullfile(resultsDir, 'mlp_digit_classification_result.mat'), ...
    'accuracy', 'YPred', 'YTest');
