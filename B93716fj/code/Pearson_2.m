qns=[152.1,110.2,97.5,85,64.6,64.1,63.8,62,55.6,53.4,53.3,52.6,51.4,44.4,36.8,33.4,33.2];
qse=[118.3,89.6,69.8,60.6,55.8,48.7,53.6,43.7,41,43.4,43.1,39.8,37.5,31.1,28.5,21.8,23.5];
surive=ones(1,length(qns));
for i= 1:length(qns)
    surive(i)=qse(i)/qns(i);
end
% a=polyfit(qse,surive*100,5);
% a1 = polyval(a, qse);%得到拟合后的新值
% plot(qse,a1,'r');
scatter(qse,surive,'r')
xlabel('\itQuantity of Newlyestablished Enterprises/Unit: 10,000  ')
ylabel('\itSurvival rate');
hold on
a=polyfit(qse,surive,3);
% a1 = polyval(a, qse);%得到拟合后的新值
% plot(qse,a1,'r');
% hold on

x=20:1:160;
y= (-1.8935e+05*power(x,4) +6.2997e+07*power(x,3)-7.1149e+09*power(x,2)+3.3223e+11*x+ 2.2249e+12)/10000000000000;

plot(y,'r','LineWidth',2)
set(gca,'XTick',0:10:150);