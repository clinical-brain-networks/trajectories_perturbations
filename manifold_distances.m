%% Fig. 1c Relating 1-back to 2-back across conditions

% 1back
for nn=1:17
    D_loc_n1(:,nn)= sqrt(sum((correct_task.cond_baseline_1back(:,1:3) - [correct_sub.indiv_baseline_1back{nn}(:,1),correct_sub.indiv_baseline_1back{nn}(:,2),correct_sub.indiv_baseline_1back{nn}(:,3)]).^2, 2)); %euclidean dist., subtract individual; pdist2 equivalent
    D_s1_n1(:,nn)= sqrt(sum((correct_task.cond_s1_1back(:,1:3) - [correct_sub.indiv_s1_1back{nn}(:,1),correct_sub.indiv_s1_1back{nn}(:,2),correct_sub.indiv_s1_1back{nn}(:,3)]).^2, 2));
    D_ips_n1(:,nn)= sqrt(sum((correct_task.cond_iPS_1back(:,1:3) - [correct_sub.indiv_iPS_1back{nn}(:,1),correct_sub.indiv_iPS_1back{nn}(:,2),correct_sub.indiv_iPS_1back{nn}(:,3)]).^2, 2));
end
total_distDlocn1=sum(D_loc_n1,1); 
total_distDs1n1=sum(D_s1_n1,1);
total_distDipsn1=sum(D_ips_n1,1);

% 2back
for nn=1:17
    D_loc_n2(:,nn)= sqrt(sum((correct_task.cond_baseline_2back(:,1:3) - [correct_sub.indiv_baseline_2back{nn}(:,1),correct_sub.indiv_baseline_2back{nn}(:,2),correct_sub.indiv_baseline_2back{nn}(:,3)]).^2, 2));
    D_s1_n2(:,nn)= sqrt(sum((correct_task.cond_s1_2back(:,1:3) - [correct_sub.indiv_s1_2back{nn}(:,1),correct_sub.indiv_s1_2back{nn}(:,2),correct_sub.indiv_s1_2back{nn}(:,3)]).^2, 2));
    D_ips_n2(:,nn)= sqrt(sum((correct_task.cond_iPS_2back(:,1:3) - [correct_sub.indiv_iPS_2back{nn}(:,1),correct_sub.indiv_iPS_2back{nn}(:,2),correct_sub.indiv_iPS_2back{nn}(:,3)]).^2, 2));
end
total_distDlocn2=sum(D_loc_n2,1);
total_distDs1n2=sum(D_s1_n2,1);
total_distDipsn2=sum(D_ips_n2,1);

baseline_dist = [total_distDlocn1; total_distDlocn2]'; [~,p_base]=ttest(baseline_dist(:,1),baseline_dist(:,2));
s1_dist = [total_distDs1n1; total_distDs1n2]'; [~,p_s1]=ttest(s1_dist(:,1),s1_dist(:,2));
ips_dist = [total_distDipsn1; total_distDipsn2]'; [~,p_ips]=ttest(ips_dist(:,1),ips_dist(:,2));

cond_diff = [p_base p_s1 p_ips];

%% Distance 1back related to 2back

[rd_1,pd_1]=corr(total_distDlocn1',total_distDlocn2','Type','Pearson','Rows','complete');
[rd_2,pd_2]=corr(total_distDs1n1',total_distDs1n2','Type','Pearson','Rows','complete');
[rd_3,pd_3]=corr(total_distDipsn1',total_distDipsn2','Type','Pearson','Rows','complete');

p_vals=[pd_1 pd_2 pd_3]; p_corr=mafdr(p_vals,'BHFDR', 'true'); 

figure('Position',[50,55,1000,300],'Name','Fig. 1c Scaling relationship between 1-back and 2-back'), set(gcf,'color','w'); col = [0.65 0.65 0.65]; ff=12;
subplot(1,3,1), plot(total_distDlocn1',total_distDlocn2,'ko', 'MarkerFaceColor', 'k','MarkerEdgeColor', 'k','MarkerSize',4); %title('Baseline')
xlabel('Total Distance from 1-back','Fontsize',ff), ylabel('Total Distance from 2-back','Fontsize',ff), linplot(total_distDlocn1',total_distDlocn2',col); set(gca,'ytick',[0:50:250]); set(gca,'box','off')
text([25 25],[150 150],['\itr = ' num2str(round(rd_1,2,'significant'))],'Fontsize',ff);
text([25 25],[130 130],['\itp{_F_D_R} = ' num2str(round(p_corr(1),3))],'Fontsize',ff);
set(gca,'yscale','linear'); set(gca,'FontSize',ff); ylim([-10 250]), xlim([0 80])  %linplot(total_distDloc,total_distDlocn2); %xlim([500 10000]), ylim([500 10000])

subplot(1,3,2), plot(total_distDs1n1',total_distDs1n2,'ko', 'MarkerFaceColor', 'r','MarkerEdgeColor', 'k','MarkerSize',4); %title('S1'), 
% xlabel('Total Distance from 1-back','Fontsize',ff), ylabel('Total Distance from  2-back','Fontsize',ff),
linplot(total_distDs1n1',total_distDs1n2',col); set(gca,'ytick',[0:50:250]); set(gca,'box','off')
text([25 25],[150 150],['\itr = ' num2str(round(rd_2,2,'significant'))],'Fontsize',ff);
text([25 25],[130 130],['\itp{_F_D_R} = ' num2str(round(p_corr(2),3))],'Fontsize',ff);
set(gca,'yscale','linear'); set(gca,'FontSize',ff); ylim([-10 250]), xlim([0 80])  %linplot(total_distDs1,total_distDs1n2); %xlim([500 10000]), ylim([500 10000])

subplot(1,3,3), plot(total_distDipsn1',total_distDipsn2,'ro', 'MarkerFaceColor', 'b','MarkerEdgeColor', 'k','MarkerSize',4); %title('iPS')
% xlabel('Total Distance from 1-back','Fontsize',ff), ylabel('Total Distance from 2-back','Fontsize',ff), 
linplot(total_distDipsn1',total_distDipsn2',col); set(gca,'box','off')
text([25 25],[100 100],['\itr = ' num2str(round(rd_3,2,'significant'))],'Fontsize',ff);
text([25 25],[80 80],['\itp{_F_D_R} = ' num2str(round(p_corr(3),3))],'Fontsize',ff);
ylim([-10 250]), xlim([0 80]) %linplot(total_distDips,total_distDipsn2); %xlim([500 10000]), ylim([500 10000])
set(gca,'FontSize',ff); 

