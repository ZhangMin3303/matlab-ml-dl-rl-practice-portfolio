%神经网络及应用  单层感知器作业

% 初始化参数
n = 0.1; % 学习率
max_iterations = 100; % 最大迭代次数
stop = 0; % 连续正确分类计数

% 输入样本向量
% 第一维为偏置项，使 [0;0] 也能被感知器正确分类。
X1 = [-1;0;0];
X2 = [-1;0;1];
X3 = [-1;1;0];
X4 = [-1;1;1];

% 目标输出
d1 = -1;
d2 = -1;
d3 = 1;
d4 = 1;

% 初始权向量：[bias_weight; feature1_weight; feature2_weight]
W = [0; 0.0418; 0.1069];

% 迭代过程
for iteration = 1:max_iterations

    % 按顺序循环选择一个训练样本
    sampleIndex = mod(iteration - 1, 4) + 1;
    if sampleIndex == 1
        X = X1;
        d = d1;
    elseif sampleIndex == 2
        X = X2;
        d = d2;
    elseif sampleIndex == 3
        X = X3;
        d = d3;
    else 
        X = X4;
        d = d4;
    end
    
    % 计算净输入
    net = W' * X;
    
    % 应用感知器激活函数
    if net >= 0
        o = 1;
    else
        o = -1;
    end
    
    % 计算误差
    error = d - o;
    
    % 更新权向量
    W = W + n * error * X;
    
    % 显示迭代过程
    fprintf('Iteration %d: WX = %.2f, O = %d, Error = %d, W = [%s]\n', ...
        iteration, net, o, error, num2str(W'));

    %停止
    if error == 0
        stop = stop+1;
    else
        stop = 0;
    end

    if stop == 4
        break
    end
    
end

fprintf('Training finished at iteration %d, final W = [%s]\n', ...
    iteration, num2str(W'));
   
    
