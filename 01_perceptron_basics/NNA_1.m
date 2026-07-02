%神经网络及应用  深度学习

%初始化参数
T=0          %阈值
n=1          %学习率
k=0          %迭代次数（自加）
max_iteration=100    %最大迭代次数
esilon=0.01          %迭代停止条件的容忍度

%输入样本向量
X1=[1;-2;1.5;0]
X2=[1;-0.5;-2;-1.5]
X3=[0;1;-1;1.5]

%初始权向量
W=[1;-1;0;0.5]


%判断是否结束迭代
for p=1:33        %记录次数
    if k>99
    '学习结束'
else


%迭代过程
for iteration=1:3
    if iteration==1
        X=X1
    else if iteration==2
            X=X2
    else
        X=X3
    end
    end
  %计算净输入
  net=W'*X

  %应用激活函数
  if net>=T
      output=1
  else
      output=-1
  end

  %调整权向量
  W=W+n*output*X

  %显示迭代过程
  fprintf('Iteration %d,net=%.2f,Output=%d,W=[%s]\n', iteration,net,output,num2str(W'))

end

%迭代次数加三次
  k=k+3

end

end

  
