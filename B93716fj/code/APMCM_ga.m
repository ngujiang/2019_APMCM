
ObjectiveFunction = @simple_fitness;

nvars = 1;%��������

LB = [0]%����������

UB = [100]%����������

 

[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB)%����ga����
