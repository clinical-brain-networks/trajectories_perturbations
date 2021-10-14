%% Fig1b & Fig2a & b 

% indiv
corr_1back2back_base=[total_distDlocn1; total_distDlocn2]'; 
[h,p_base_fig1b,ci,stats]=ttest(corr_1back2back_base(:,1),corr_1back2back_base(:,2));
scaling_withinsession_base=mean(corr_1back2back_base(:,2)./corr_1back2back_base(:,1));
tval_base_fig1b=stats.tstat;

corr_1back2back_s1=[total_distDs1n1; total_distDs1n2]'; 
[h,p_s1_fig1b,ci,stats]=ttest(corr_1back2back_s1(:,1),corr_1back2back_s1(:,2));
scaling_withinsession_s1=mean(corr_1back2back_s1(:,2)./corr_1back2back_s1(:,1));
tval_s1_fig1b=stats.tstat;

corr_1back2back_ips=[total_distDipsn1; total_distDipsn2]'; 
[h,p_ips_fig1b,ci,stats]=ttest(corr_1back2back_ips(:,1),corr_1back2back_ips(:,2));
scaling_withinsession_ips=mean(corr_1back2back_ips(:,2)./corr_1back2back_ips(:,1));
tval_ips_fig1b=stats.tstat;

fig1b_scaling =[scaling_withinsession_base scaling_withinsession_s1 scaling_withinsession_ips]

p_scaling_1b_corr=mafdr([p_base_fig1b p_s1_fig1b p_ips_fig1b],'BHFDR', 'true');
tvals_fig1=[tval_base_fig1b tval_s1_fig1b tval_ips_fig1b];


%% Common embedding space

%1back correct
for nn=1:17
    D_loc_n1G(:,nn)= sqrt(sum((net1base_c(:,1:3) - [correct_sub.indiv_baseline_1back{nn}(:,1),correct_sub.indiv_baseline_1back{nn}(:,2),correct_sub.indiv_baseline_1back{nn}(:,3)]).^2, 2));
end
total_distDlocn1G=sum(D_loc_n1G,1);

for nn=1:17
    D_s1_n1G(:,nn)= sqrt(sum((net1s1_c(:,1:3) - [correct_sub.indiv_s1_1back{nn}(:,1),correct_sub.indiv_s1_1back{nn}(:,2),correct_sub.indiv_s1_1back{nn}(:,3)]).^2, 2));
end
total_distDs1n1G=sum(D_s1_n1G,1);

for nn=1:17
    D_ips_n1G(:,nn)= sqrt(sum((net1ips_c(:,1:3) - [correct_sub.indiv_iPS_1back{nn}(:,1),correct_sub.indiv_iPS_1back{nn}(:,2),correct_sub.indiv_iPS_1back{nn}(:,3)]).^2, 2));
end
total_distDipsn1G=sum(D_ips_n1G,1);

%2back correct
for nn=1:17
    D_loc_n2G(:,nn)= sqrt(sum((net2base_c(:,1:3) - [correct_sub.indiv_baseline_2back{nn}(:,1),correct_sub.indiv_baseline_2back{nn}(:,2),correct_sub.indiv_baseline_2back{nn}(:,3)]).^2, 2));
end
total_distDlocn2G=sum(D_loc_n2G,1);

for nn=1:17
    D_s1_n2G(:,nn)= sqrt(sum((net2s1_c(:,1:3) - [correct_sub.indiv_s1_2back{nn}(:,1),correct_sub.indiv_s1_2back{nn}(:,2),correct_sub.indiv_s1_2back{nn}(:,3)]).^2, 2));
end
total_distDs1n2G=sum(D_s1_n2G,1);

for nn=1:17
    D_ips_n2G(:,nn)= sqrt(sum((net2ips_c(:,1:3) - [correct_sub.indiv_iPS_2back{nn}(:,1),correct_sub.indiv_iPS_2back{nn}(:,2),correct_sub.indiv_iPS_2back{nn}(:,3)]).^2, 2));
end
total_distDipsn2G=sum(D_ips_n2G,1);


%% incorrect

%1back incorrect
for nn=1:17
    D_loc_n1G_inc(:,nn)= sqrt(sum((net1base_i(:,1:3) - [incorrect_sub.indiv_baseline_1back{nn}(:,1),incorrect_sub.indiv_baseline_1back{nn}(:,2),incorrect_sub.indiv_baseline_1back{nn}(:,3)]).^2, 2));
end
total_distDlocn1G_inc=sum(D_loc_n1G_inc,1);

for nn=1:17
    D_s1_n1G_inc(:,nn)= sqrt(sum((net1s1_i(:,1:3) - [incorrect_sub.indiv_s1_1back{nn}(:,1),incorrect_sub.indiv_s1_1back{nn}(:,2),incorrect_sub.indiv_s1_1back{nn}(:,3)]).^2, 2));
end
total_distDs1n1G_inc=sum(D_s1_n1G_inc,1);

for nn=1:17
    D_ips_n1G_inc(:,nn)= sqrt(sum((net1ips_i(:,1:3) - [incorrect_sub.indiv_iPS_1back{nn}(:,1),incorrect_sub.indiv_iPS_1back{nn}(:,2),incorrect_sub.indiv_iPS_1back{nn}(:,3)]).^2, 2));
end
total_distDipsn1G_inc=sum(D_ips_n1G_inc,1);

%2back incorrect
for nn=1:17
    D_loc_n2G_inc(:,nn)= sqrt(sum((net2base_i(:,1:3) - [incorrect_sub.indiv_baseline_2back{nn}(:,1),incorrect_sub.indiv_baseline_2back{nn}(:,2),incorrect_sub.indiv_baseline_2back{nn}(:,3)]).^2, 2));
end
total_distDlocn2G_inc=sum(D_loc_n2G_inc,1);

for nn=1:17
    D_s1_n2G_inc(:,nn)= sqrt(sum((net2s1_i(:,1:3) - [incorrect_sub.indiv_s1_2back{nn}(:,1),incorrect_sub.indiv_s1_2back{nn}(:,2),incorrect_sub.indiv_s1_2back{nn}(:,3)]).^2, 2));
end
total_distDs1n2G_inc=sum(D_s1_n2G_inc,1);

for nn=1:17
    D_ips_n2G_inc(:,nn)= sqrt(sum((net2ips_i(:,1:3) - [incorrect_sub.indiv_iPS_2back{nn}(:,1),incorrect_sub.indiv_iPS_2back{nn}(:,2),incorrect_sub.indiv_iPS_2back{nn}(:,3)]).^2, 2));
end
total_distDipsn2G_inc=sum(D_ips_n2G_inc,1);

%% main fig2 
cspace_corr_1back2backx=[total_distDlocn1G,total_distDs1n1G,total_distDipsn1G; total_distDlocn2G,total_distDs1n2G,total_distDipsn2G]'; 
[h,p_c3,ci,stats]=ttest(cspace_corr_1back2backx(:,1),cspace_corr_1back2backx(:,2));
scaling_cspace_1back_2back=mean(cspace_corr_1back2backx(:,2)./cspace_corr_1back2backx(:,1));
tval_corr_1back2backx=stats.tstat;

cspace_2back2back_corr_incorrx=[total_distDlocn2G,total_distDs1n2G,total_distDipsn2G; total_distDlocn2G_inc,total_distDs1n2G_inc,total_distDipsn2G_inc]'; 
[h,p_c4,ci,stats]=ttest(cspace_2back2back_corr_incorrx(:,1),cspace_2back2back_corr_incorrx(:,2));
scaling_cspace_2back_corr_incorr=mean(cspace_2back2back_corr_incorrx(:,1)./cspace_2back2back_corr_incorrx(:,2));
fig2a=[scaling_cspace_1back_2back scaling_cspace_2back_corr_incorr]
tval_2back2back_corr_incorrx=stats.tstat;

%ips
corr_1back2back=[total_distDipsn1G; total_distDipsn2G]'; 
[h,p_c5,ci,stats]=ttest(corr_1back2back(:,1),corr_1back2back(:,2));
scaling_ips_1back_2back=mean(corr_1back2back(:,2)./corr_1back2back(:,1)); 
tval_ips_1back_2back=stats.tstat;

corr_2back2back_corr_incorr=[total_distDipsn2G; total_distDipsn2G_inc]'; 
[h,p_c6,ci,stats]=ttest(total_distDipsn2G, total_distDipsn2G_inc);
scaling_ips_2back_corr_incorr=mean(total_distDipsn2G./total_distDipsn2G_inc);
fig2b=[scaling_ips_1back_2back scaling_ips_2back_corr_incorr]
tval_ips_2back2back_corr_incorr=stats.tstat;

%
p_scaling_fig2_corr=mafdr([p_c3 p_c4 p_c5 p_c6],'BHFDR', 'true');
tvals_fig2=[tval_corr_1back2backx tval_2back2back_corr_incorrx tval_ips_1back_2back tval_ips_2back2back_corr_incorr]; 


%% supplementary for baseline, s1
%base
corr_1back2back=[total_distDlocn1G; total_distDlocn2G]'; 
[~,pxx]=ttest(corr_1back2back(:,1),corr_1back2back(:,2));
scaling_base_1back_2back=mean(corr_1back2back(:,2)./corr_1back2back(:,1)); 

corr_2back2back_corr_incorr=[total_distDlocn2G; total_distDlocn2G_inc]'; 
[~,pxxy]=ttest(total_distDlocn2G, total_distDlocn2G_inc);
scaling_base_2back_corr_incorr=mean(total_distDlocn2G./total_distDlocn2G_inc);
supp_fig2a_pt1 =[scaling_base_1back_2back scaling_base_2back_corr_incorr]

%s1
corr_1back2back=[total_distDs1n1G; total_distDs1n2G]'; 
[~,pxxz]=ttest(corr_1back2back(:,1),corr_1back2back(:,2));
scaling_s1_1back_2back=mean(corr_1back2back(:,2)./corr_1back2back(:,1)); 

corr_2back2back_corr_incorr=[total_distDs1n2G; total_distDs1n2G_inc]'; 
[~,pxxm]=ttest(total_distDs1n2G, total_distDs1n2G_inc);
scaling_s1_2back_corr_incorr=mean(total_distDs1n2G./total_distDs1n2G_inc);
supp_fig2a_pt2 =[scaling_s1_1back_2back scaling_s1_2back_corr_incorr]

%%

delta_dist = [total_distDlocn2G-total_distDlocn1G; total_distDs1n2G-total_distDs1n1G; total_distDipsn2G-total_distDipsn1G]';
delta_dist_inc = [total_distDlocn2G_inc-total_distDlocn1G_inc; total_distDs1n2G_inc-total_distDs1n1G_inc; total_distDipsn2G_inc-total_distDipsn1G_inc]';

figure('Position',[50,55,500,400],'Name','Fig. 2d Manifold distances participant-level'), set(gcf,'color','w');
delta_dist_corrminusincorr=[delta_dist(:,1)-delta_dist_inc(:,1) delta_dist(:,2)-delta_dist_inc(:,2) delta_dist(:,3)-delta_dist_inc(:,3)];
subj_labels=[ones(1,17),ones(1,17)*2,ones(1,17)*3];
set(gca,'box','off')
% beeswarm(subj_labels',X2,'down','ci');
for n=1:17; plot(delta_dist_corrminusincorr(n,:),'-o','MarkerFaceColor',[.4 .4 .4],'LineStyle','--','Color',[0.8 0.8 0.8]); hold on; end
hold on
violin(delta_dist_corrminusincorr,'edgecolor','none','facealpha',0,'medc','r');

set(gca,'xtick',[1,2,3]);
set(gca,'xticklabel',{'Baseline','S1','iPS'});
ylabel('\Delta Total Distance (Correct minus Incorrect)'), 
ylim([-100 250]); xlim([0.5 3.5])
set(gca,'box','off')

hold on, line([1,1],[median(delta_dist_corrminusincorr(:,1))-std(delta_dist_corrminusincorr(:,1)),median(delta_dist_corrminusincorr(:,1))+std(delta_dist_corrminusincorr(:,1))],'Linewidth',3,'Color','k')
hold on, line([2,2],[median(delta_dist_corrminusincorr(:,2))-std(delta_dist_corrminusincorr(:,2)),median(delta_dist_corrminusincorr(:,2))+std(delta_dist_corrminusincorr(:,2))],'Linewidth',3,'Color','k')
hold on, line([3,3],[median(delta_dist_corrminusincorr(:,3))-std(delta_dist_corrminusincorr(:,3)),median(delta_dist_corrminusincorr(:,3))+std(delta_dist_corrminusincorr(:,3))],'Linewidth',3,'Color','k')

[~,p_dist1_base_s1]=ttest(delta_dist_corrminusincorr(:,1), delta_dist_corrminusincorr(:,2));
[~,p_dist2_s1_ips]=ttest(delta_dist_corrminusincorr(:,2), delta_dist_corrminusincorr(:,3));
[~,p_dist2_base_ips]=ttest(delta_dist_corrminusincorr(:,1), delta_dist_corrminusincorr(:,3));

p_fig2d_corr=mafdr([p_dist1_base_s1 p_dist2_s1_ips p_dist2_base_ips],'BHFDR','true');

hold on, line([2 3],[240 240],'Color','k'), text([2.2 2.2],[255 255],['\itp\it{_F_D_R}=8.2x10^{-11}'],'fontsize',11); % num2str(sprintf('%0.10f',p_fig2d_corr(2)))
hold on, line([1 3],[190 190],'Color','k'), text([1.65 1.65],[205 205],['\itp\it{_F_D_R}=1.1x10^{-11}'],'fontsize',11);


% uncomment below for stats
% figure, anova1(delta_dist_corrminusincorr)
