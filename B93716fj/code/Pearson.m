qns=[204.8,203.1,152.1,110.2,97.5,85,64.6,64.1,63.8,62,55.6,53.4,53.3,52.6,51.4,44.4,36.8,33.4,33.2];
qse=[157.4,174.1,118.3,89.6,69.8,60.6,55.8,48.7,53.6,43.7,41,43.4,43.1,39.8,37.5,31.1,28.5,21.8,23.5];
surive=ones(1,length(qns));
for i= 1:length(qns)
    surive(i)=qse(i)/qns(i);
end
scatter(qse,surive,'r');
xlabel('\itResident Population/Unit: 10,000 ')
ylabel('\itSurvival rate');

% corrcoef(surive,qse)
% rp=[2149.7,1190.84,2172.9,1404.35,683.07,1194.05,827,787.5,1068.4,1562.12,920.4,826.1,972.4,1091.4,992.32,787.5,731.15,752,667];
% 
% corrcoef(surive,rp)
% scatter(rp,surive,'b')
% qns_1=[64.6,64.1,63.8,62,55.6,53.4,53.3,52.6,51.4,44.4,36.8,33.4,33.2];
% qse_1=[55.8,48.7,53.6,43.7,41,43.4,43.1,39.8,37.5,31.1,28.5,21.8,23.5];
% surive_1=ones(1,length(qns_1));
% for i= 1:length(qns_1)
%     surive_1(i)=qse_1(i)/qns_1(i);
% end
% corrcoef(surive_1,qse_1);
% qns_2=[204.8,152.1,110.2];
% qse_2=[157.4,118.3,89.6];
% surive_2=ones(1,length(qns_2));
% for i= 1:length(qns_2)
%     surive_2(i)=qse_2(i)/qns_2(i);
% end
% 
% corrcoef(surive_2,qse_2);
% xlabel('\itResident Population/Unit: 10,000 ')
% ylabel('\itSurvival rate');

