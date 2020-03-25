
ObjectiveFunction = @simple_fitness;

nvars = 1;%变量个数

LB = [0]%定义域下限

UB = [100]%定义域上限

 

[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB)%调用ga函数
