%% Manifold trajectories for correct trials across all stimulation conditions

%plot settings
v = [-45 40]; tpc=[1,2,3]; space=5; cc=flipud(hsv(4)); interpfac =5; linsty = '-';

figure('Position',[50,55,1200,400],'Name','Fig. 1b - 1-back correct'), set(gcf,'color','w'); 
hA(1)=subplot(1,3,1); taskcond=correct_task.cond_baseline_1back; manifold_plot; set(gca,'visible','off');
hA(2)=subplot(1,3,2); taskcond=correct_task.cond_s1_1back; manifold_plot; set(gca,'visible','off');
hA(3)=subplot(1,3,3); taskcond=correct_task.cond_iPS_1back; manifold_plot; set(gca,'visible','off');

%%
figure('Position',[50,55,1200,400],'Name','Fig. 1b - 2-back correct'), set(gcf,'color','w'); 
hA(4)=subplot(1,3,1); taskcond=correct_task.cond_baseline_2back; manifold_plot; set(gca,'visible','off');
hA(5)=subplot(1,3,2); taskcond=correct_task.cond_s1_2back; manifold_plot; set(gca,'visible','off');
hA(6)=subplot(1,3,3); taskcond=correct_task.cond_iPS_2back; manifold_plot; set(gca,'visible','off');

%% Supplementary Figure 1

%PHATE1,2,3 - 1-back
figure('Position',[20,25,1400,750],'Name','Supp. Fig 1: Session and working memory load effects on PHATE4 and PHATE5'), set(gcf,'color','w');
tpc=[1,2,3]; 
hA1(1)=subplot(3,4,1); taskcond=correct_task.cond_baseline_1back; manifold_plot; set(gca,'visible','on');
xlabel('PHATE1','fontweight','bold'); ylabel('PHATE2','fontweight','bold'); zlabel('PHATE3','fontweight','bold'); 
hB(1)=subplot(3,4,5); taskcond=correct_task.cond_s1_1back; manifold_plot; set(gca,'visible','on'); 
xlabel('PHATE1','fontweight','bold'); ylabel('PHATE2','fontweight','bold'); zlabel('PHATE3','fontweight','bold'); 
hC(1)=subplot(3,4,9); taskcond=correct_task.cond_iPS_1back; manifold_plot; set(gca,'visible','on'); 
xlabel('PHATE1','fontweight','bold'); ylabel('PHATE2','fontweight','bold'); zlabel('PHATE3','fontweight','bold'); 
rotate_labels(hA1); rotate_labels(hB); rotate_labels(hC); 

% PHATE3,4,5 "Control PHATE dimensions" - 1-back
tpc=[3,4,5];
hD(1)=subplot(3,4,2); taskcond=correct_task.cond_baseline_1back; manifold_plot; set(gca,'visible','on'); 
xlim([hA1(1).XAxis.Limits]), ylim(hA1(1).YAxis.Limits); zlim([hA1(1).ZAxis.Limits]);
xlabel('PHATE3','fontweight','bold'); ylabel('PHATE4','fontweight','bold'); zlabel('PHATE5','fontweight','bold'); 
hE(1)=subplot(3,4,6); taskcond=correct_task.cond_s1_1back; manifold_plot; set(gca,'visible','on'); 
xlim([hB(1).XAxis.Limits]), ylim(hB(1).YAxis.Limits); zlim([hB(1).ZAxis.Limits]);
xlabel('PHATE3','fontweight','bold'); ylabel('PHATE4','fontweight','bold'); zlabel('PHATE5','fontweight','bold'); 
hFx=subplot(3,4,10); taskcond=correct_task.cond_iPS_1back; manifold_plot; set(gca,'visible','on'); 
xlim([hC(1).XAxis.Limits]), ylim(hC(1).YAxis.Limits); zlim([hC(1).ZAxis.Limits]);
xlabel('PHATE3','fontweight','bold'); ylabel('PHATE4','fontweight','bold'); zlabel('PHATE5','fontweight','bold'); 
rotate_labels(hD); rotate_labels(hE); rotate_labels(hFx); 

%PHATE1,2,3 - 2-back
tpc=[1,2,3]; 
hA1(1)=subplot(3,4,3); taskcond=correct_task.cond_baseline_2back; manifold_plot; set(gca,'visible','on'); 
xlabel('PHATE1','fontweight','bold'); ylabel('PHATE2','fontweight','bold'); zlabel('PHATE3','fontweight','bold'); 
hB(1)=subplot(3,4,7); taskcond=correct_task.cond_s1_2back; manifold_plot; set(gca,'visible','on'); 
xlabel('PHATE1','fontweight','bold'); ylabel('PHATE2','fontweight','bold'); zlabel('PHATE3','fontweight','bold'); 
hC(1)=subplot(3,4,11); taskcond=correct_task.cond_iPS_2back; manifold_plot; set(gca,'visible','on'); 
xlabel('PHATE1','fontweight','bold'); ylabel('PHATE2','fontweight','bold'); zlabel('PHATE3','fontweight','bold'); 
rotate_labels(hA1); rotate_labels(hB); rotate_labels(hC); 

% PHATE3,4,5 "Control PHATE dimensions" - 2-back
tpc=[3,4,5];
hD(1)=subplot(3,4,4); taskcond=correct_task.cond_baseline_2back; manifold_plot; set(gca,'visible','on'); 
xlim([hA1(1).XAxis.Limits]), ylim(hA1(1).YAxis.Limits); zlim([hA1(1).ZAxis.Limits]);
xlabel('PHATE3','fontweight','bold'); ylabel('PHATE4','fontweight','bold'); zlabel('PHATE5','fontweight','bold'); 
hE(1)=subplot(3,4,8); taskcond=correct_task.cond_s1_2back; manifold_plot; set(gca,'visible','on'); 
xlim([hB(1).XAxis.Limits]), ylim(hB(1).YAxis.Limits); zlim([hB(1).ZAxis.Limits]);
xlabel('PHATE3','fontweight','bold'); ylabel('PHATE4','fontweight','bold'); zlabel('PHATE5','fontweight','bold'); 
hFx=subplot(3,4,12); taskcond=correct_task.cond_iPS_2back; manifold_plot; set(gca,'visible','on'); 
xlim([hC(1).XAxis.Limits]), ylim(hC(1).YAxis.Limits); zlim([hC(1).ZAxis.Limits]);
xlabel('PHATE3','fontweight','bold'); ylabel('PHATE4','fontweight','bold'); zlabel('PHATE5','fontweight','bold'); 
rotate_labels(hD); rotate_labels(hE); rotate_labels(hFx); 



