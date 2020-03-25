rp=[784,797,809,826,836,844,845,860,871,897,904,919,935,950,965,981,1028,1047,1061,1075,1086,1094,1102,1112,1125,1251,1259,1240,1246,1257,1357,1383,1423,1456,1493,1538,1581,1633,1695,1755,1962,2018.6,2069.3,2114.8,2151.6];
qse=[2,1,5,7,13,18,20,15,17,12,11,22,147,194,95,56,76,82,159,236,264,368,365,402,340,419,505,1541,1835,1514,1329,956,899,806,867];
gdp=[63.37,61.14,67.19,73.03,80.19,91.25,93.84,99.09,109,120,139,139,155,183,217,257,285,327,410,456,501,599,709,886,1145,1580,1789,2077,2377,2679,3162,3708,4135,5007,6033,6970,8118,9847,11115,12153,14114,16232,17879,19801,21331];
p_gdp=[824,787,853,914,990,1115,1137,1189,1257,1358,1544,1526,1671,1943,2262,2643,2836,3150,3892,4269,4635,5494,6458,8006,10240,12690,14254,16621,19128,21467,24122,26998,30840,34892,41699,45443.7,49505,60096,64491,66940,73856,81658,87474.7,94647.9,99995];
rp_a=ones(9,5);
for i =1:7
    for j=1:5
        rp_a(i,j)=gdp((i-1)*5+j)
    end
end
T=rp_a(1:5,1:5);
x0=mean(T');
x1=zeros(size(x0));
n=length(x0);
x1(1)=x0(1);
for i = 2:n
    x1(i)=x1(i-1)+x0(i);
end
z=zeros(size(x0));
af=0.4;
for i =2:n
    z(i)=af*x1(i)+(1-af)*x1(i-1);
end
Y=zeros(n-1,1);
B=zeros(n-1,2);
for i=2:n
    Y(i-1,1)=x0(i);
    B(i-1,1)=-z(i);
    B(i-1,2)=1;
end
para=inv(B'*B)*B'*Y;
a=para(1);
b=para(2);
pred=(x0(1)-b/a)*exp(-a*n)*(1-exp(a));
Total=5*pred
r=sum(T)/sum(sum(T));
Px=Total*r;
fprintf('输出2005-2009的预测值和实际值.\n');
for i=1:5
    fprintf('%5d',i);
end
fprintf('\n');
for i =1:5
    fprintf('%6.1f',Px(i));
end
fprintf('\n');
for i =1:5
    fprintf('%6.1f',rp_a(6,i))
end;
% subplot(2,1,1);
PA=[rp_a(1,:),rp_a(2,:),rp_a(3,:),rp_a(4,:),rp_a(5,:),rp_a(6,:)];
% plot(PA,'LineWidth',2);grid on
% title('\itQuantity of Newly-established Enterprises');
% xlabel('\ityear');
% ylabel('\itGDP/Unit:Trillion')
% set(gca,'xticklabel',{'\it1980','\it1985','\it1990','\it1995','\it2000','\it2005','\it2010'});
% subplot(2,1,2);
% plot(1:5,rp_a(6,:),'b*')
% hold on
% plot(1:5,Px,'r','LineWidth',2);
% title('\itComparison of forecast and actual from 2005 to 2009');
% xlabel('\ityear');
% ylabel('\itGDP/Unit:Trillion')
% set(gca,'xticklabel',{'\it2005',' ','\it2006',' ','\it2007','','\it2008','','\it2009','','\it2010'});
% legend('actual','forecast')
draw=ones(5,2);
for i =1:5
    draw(i,1)=rp_a(6,i)
    draw(i,2)=Px(i)
end
bar(draw)

legend('actual','forecast')
hold on
 title('\itComparison of forecast and actual from 2005 to 2009');
% xlabel('\ityear');
% ylabel('\itnumber/Unit:1,000')
xlabel('\ityear');
ylabel('\itGDP/Unit:Trillion')
set(gca,'xticklabel',{'\it2005','\it2006','\it2007','\it2008','\it2009','\it2010'});

% grid on