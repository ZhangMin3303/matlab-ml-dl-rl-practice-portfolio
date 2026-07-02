%神经网络及应用  单层感知器

% 初始化参数
n = 0.1; % 学习率
max_iterations = 100; % 最大迭代次数

% 输入样本向量
X1 = [-1; 1; -2; 0];
X2 = [-1; 0; 1.5; -0.5];
X3 = [-1; -1; 1; 0.5];

% 目标输出
d1 = -1;
d2 = -1;
d3 = 1;

% 初始权向量
W = [0.5; 1; -1; 0];

% 迭代过程
for iteration = 1:3

    % 随机选择一个训练样本
    if iteration == 1
        X = X1;
        d = d1;
    elseif iteration == 2
        X = X2;
        d = d2;
    else
        X = X3;
        d = d3;
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
    
end