%% Low-dimensional manifolds for Fig 2 & 3
% Correct
load 'common_withinsession_correct_knn_10_akernel_35'
% Incorrect
load 'common_withinsession_incorrect_knn_10_akernel_35'

%% Fig 2a - Low-dimensional manifolds for all sesssion data combined (common space)
%misc plot settings
tpc=[1,2,3]; v = [-45 40]; cc=flipud(hsv(4)); space = 5; interpfac =3; subno=17; alphv=1; linsty = '-'; xx=1; yy=2; zz=3; space =5;

figure('Position',[100,50,400,700],'Name', 'Fig. 2a Common space Manifold Trajectory 1-back & 2-back'), set(gcf,'color','w');
subplot(2,1,1), taskcond=cspace_1back_corr; manifold_plot; set(gca,'visible','off');
subplot(2,1,2), taskcond=cspace_2back_corr; manifold_plot; set(gca,'visible','off');

%% Project session data in common space
%correct
net1base_c=cspace_1back_corr(:,1:5)-correct_task.cond_baseline_1back;
net1s1_c=cspace_1back_corr(:,1:5)-correct_task.cond_s1_1back;
net1ips_c=cspace_1back_corr(:,1:5)-correct_task.cond_iPS_1back;
net2base_c=cspace_2back_corr(:,1:5)-correct_task.cond_baseline_2back;
net2s1_c=cspace_2back_corr(:,1:5)-correct_task.cond_s1_2back;
net2ips_c=cspace_2back_corr(:,1:5)-correct_task.cond_iPS_2back;
%incorrect
net1base_i=cspace_1back_inc(:,1:5)-incorrect_task.cond_baseline_1back;
net1s1_i=cspace_1back_inc(:,1:5)-incorrect_task.cond_s1_1back;
net1ips_i=cspace_1back_inc(:,1:5)-incorrect_task.cond_iPS_1back;
net2base_i=cspace_2back_inc(:,1:5)-incorrect_task.cond_baseline_2back;
net2s1_i=cspace_2back_inc(:,1:5)-incorrect_task.cond_s1_2back;
net2ips_i=cspace_2back_inc(:,1:5)-incorrect_task.cond_iPS_2back;

%% Fig 2b iPS common space
figure('Position',[50,55,400,700],'Name','Fig. 2b - iPS Common space'), set(gcf,'color','w');
subplot(2,1,1), taskcond=net1ips_c; manifold_plot; set(gca,'visible','off');
subplot(2,1,2), taskcond=net2ips_c; manifold_plot; set(gca,'visible','off');

%% Fig 2c 2-back common space
figure('Name','Fig. 2c - Common space conditions overlay 2-back'), set(gcf,'color','w');
taskcond=net2ips_c; kvalsp='b'; manifold_plot_notraj; hold on,
taskcond=net2base_c; kvalsp='k'; manifold_plot_notraj; 
taskcond=net2s1_c; kvalsp='r'; manifold_plot_notraj;
symlog(gca,'xyz',-1.8)

%%
figure('Position',[50,55,1200,600],'Name', ['Supp. Fig 4a Correct Common Space Baseline & S1']); set(gcf,'Color','w')
subplot(2,4,1), taskcond=net1base_c; manifold_plot; set(gca,'visible','off');
subplot(2,4,2), taskcond=net1base_i; manifold_plot; set(gca,'visible','off');
subplot(2,4,3), taskcond=net1s1_c; manifold_plot;  set(gca,'visible','off');
subplot(2,4,4), taskcond=net1s1_i; manifold_plot;  set(gca,'visible','off');

subplot(2,4,5), taskcond=net2base_c; manifold_plot; set(gca,'visible','off');
subplot(2,4,6), taskcond=net2base_i; manifold_plot; set(gca,'visible','off');
subplot(2,4,7), taskcond=net2s1_c; manifold_plot; set(gca,'visible','off');
subplot(2,4,8), taskcond=net2s1_i; manifold_plot; set(gca,'visible','off');

figure('Name','Supp. Fig. 4b - Common space conditions overlay 1-back'), set(gcf,'color','w');
taskcond=net1ips_c; kvalsp='b'; manifold_plot_notraj; hold on,
taskcond=net1base_c; kvalsp='k'; manifold_plot_notraj;
taskcond=net1s1_c; kvalsp='r'; manifold_plot_notraj;
symlog(gca,'xyz',-1.8)

%% scaling factors for Fig 1&2 + 2d individual distance plot across sessions

dist_and_scaling_forplots


%% Fig 3. Associations between individual low-dimensional structures and working memory performances

load('accu_subs.mat') % task accuracy for 1-back, 2-back
%misc plot settings
cc=flipud(jet(20)); pc=[1:3]; colscl=.9;

% Order task accuracies - for individual manifold trajectory overlay
[sort_acc_loc_n1_accu,idx_loc_n1_accu]=sort(subj_loc_n1_accu);
[sort_acc_s1_n1_accu,idx_s1_n1_accu]=sort(subj_s1_n1_accu);
[sort_acc_iPS_n1_accu,idx_ips_n1_accu]=sort(subj_ips_n1_accu);
[sort_acc_loc_n2_accu,idx_loc_n2_accu]=sort(subj_loc_n2_accu);
[sort_acc_s1_n2_accu,idx_s1_n2_accu]=sort(subj_s1_n2_accu);
[sort_acc_iPS_n2_accu,idx_ips_n2_accu]=sort(subj_ips_n2_accu);

for n=1:subno; baseline_n1_trajectory{n}=cspace_1back_corr(:,1:5)-correct_sub.indiv_baseline_1back{idx_loc_n1_accu(n)}; baseline_n1_value(n)=median(sum(abs(baseline_n1_trajectory{n}(:,pc))));end
for n=1:subno; s1_n1_trajectory{n}=cspace_1back_corr(:,1:5)-correct_sub.indiv_s1_1back{idx_s1_n1_accu(n)}; s1_n1_value(n)=median(sum(abs(s1_n1_trajectory{n}(:,pc)))); end
for n=1:subno; ips_n1_trajectory{n}=cspace_1back_corr(:,1:5)-correct_sub.indiv_iPS_1back{idx_ips_n1_accu(n)}; ips_n1_value(n)=median(sum(abs(ips_n1_trajectory{n}(:,pc)))); end
for n=1:subno; baseline_n2_trajectory{n}=cspace_2back_corr(:,1:5)-correct_sub.indiv_baseline_2back{idx_loc_n2_accu(n)}; baseline_n2_value(n)=median(sum(abs(baseline_n2_trajectory{n}(:,pc)))); end
for n=1:subno; s1_n2_trajectory{n}=cspace_2back_corr(:,1:5)-correct_sub.indiv_s1_2back{idx_s1_n2_accu(n)}; s1_n2_value(n)=median(sum(abs(s1_n2_trajectory{n}(:,pc)))); end
for n=1:subno; ips_n2_trajectory{n}=cspace_2back_corr(:,1:5)-correct_sub.indiv_iPS_2back{idx_ips_n2_accu(n)}; ips_n2_value(n)=median(sum(abs(ips_n2_trajectory{n}(:,pc)))); end


%% Fig. 3b Individual trajectory 
sessions={baseline_n1_trajectory s1_n1_trajectory ips_n1_trajectory baseline_n2_trajectory s1_n2_trajectory ips_n2_trajectory}; 
accux={sort_acc_loc_n1_accu sort_acc_s1_n1_accu sort_acc_iPS_n1_accu sort_acc_loc_n2_accu sort_acc_s1_n2_accu sort_acc_iPS_n2_accu};

figure, set(gcf,'color','w');
for j=1:3;
    for n=1:subno;
        subplot(1,3,j),
        tmp=accux{j}*100;
        tmp(tmp<70)=1; tmp(tmp<80&tmp>=70)=5; tmp(tmp<90&tmp>=80)=15; tmp(tmp>=90)=11;
        taskcond=sessions{j}{n};
        co_p=cc(tmp(n),:)*colscl;  trajecplot_overlay; hold all;
        set(gca,'visible','off');
        view([-34 -6])
    end
    set(gcf,'Position',[50,55,1000,300],'Name', 'Fig. 3b 1-back')
end

figure, set(gcf,'color','w');
for j=4:6;
    for n=1:subno;
        h=subplot(1,3,j-3); h1=h;
        tmp=accux{j}*100;
        tmp(tmp<70)=1; tmp(tmp<80&tmp>=70)=5; tmp(tmp<90&tmp>=80)=15; tmp(tmp>=90)=11;
        taskcond=sessions{j}{n};
        co_p=cc(tmp(n),:)*colscl; trajecplot_overlay; hold all;
        set(gca,'visible','off'); clearvars h;
        view([-34 -6])
    end
    set(gcf,'Position',[50,55,1000,300],'Name', 'Fig. 3b 2-back')
end

%% Fig. 3c
figure('Position',[50,55,1200,300],'Name','Fig. 3c Relationship between individuals manifold trajectories and task accuracy','color','w');
[r1,p1]=corr(baseline_n1_value',sort_acc_loc_n1_accu','Type','Pearson','Rows','complete');
[r2,p2]=corr(s1_n1_value',sort_acc_s1_n1_accu','Type','Pearson','Rows','complete');
[r3,p3]=corr(ips_n1_value',sort_acc_iPS_n1_accu','Type','Pearson','Rows','complete');
[r4,p4]=corr(baseline_n2_value',sort_acc_loc_n2_accu','Type','Pearson','Rows','complete');
[r5,p5]=corr(s1_n2_value',sort_acc_s1_n2_accu','Type','Pearson','Rows','complete');
[r6,p6]=corr(ips_n2_value',sort_acc_iPS_n2_accu','Type','Pearson','Rows','complete');

subplot(1,3,1),
clearvars tmp, tmp=sort_acc_loc_n2_accu*100;
tmp(tmp<70)=1; tmp(tmp<80&tmp>=70)=5; tmp(tmp<90&tmp>=80)=15; tmp(tmp>=90)=11;
for n=1:subno
    co_p=cc(tmp(n),:)*colscl;
    plot(baseline_n2_value(n)',sort_acc_loc_n2_accu(n)*100,'o','MarkerFaceColor', co_p,'MarkerEdgeColor','none');
    hold on;
end
hold all
plot(baseline_n2_value,sort_acc_loc_n2_accu*100,'.','MarkerEdgeColor','none');
xlabel('Manifold Trajectory'), ylabel('Accuracy of 2-back'), linplot(baseline_n2_value,sort_acc_loc_n2_accu*100,[0.6 0.6 0.6]); set(gca,'box','off')
text([22 22],[70 70],['\itr = ' num2str(sprintf('%0.2f',r4))])
% text([22 22],[65 65],['\itp = ' num2str(round(p4,3))])
xlim([0 30]), ylim([60 100])

subplot(1,3,2),
clearvars tmp, tmp=sort_acc_s1_n2_accu*100;
tmp(tmp<70)=1; tmp(tmp<80&tmp>=70)=5; tmp(tmp<90&tmp>=80)=15; tmp(tmp>=90)=11;
for n=1:subno
    co_p=cc(tmp(n),:);
    plot(s1_n2_value(n)',sort_acc_s1_n2_accu(n)*100,'o','MarkerFaceColor', co_p,'MarkerEdgeColor','none');
    hold on;
end
hold all
plot(s1_n2_value,sort_acc_s1_n2_accu*100,'.','MarkerEdgeColor','none');
linplot(s1_n2_value,sort_acc_s1_n2_accu*100,[0.6 0.6 0.6]); set(gca,'box','off')
text([20 20],[70 70],['\itr = ' num2str(round(r5,2,'significant'))])
% text([20 20],[65 65],['\itp = ' num2str(round(p5,3))])
xlim([0 30]), ylim([60 100])

subplot(1,3,3),
clearvars tmp, tmp=sort_acc_iPS_n2_accu*100;
tmp(tmp<70)=1; tmp(tmp<80&tmp>=70)=5; tmp(tmp<90&tmp>=80)=15; tmp(tmp>=90)=11;
for n=1:subno
    co_p=cc(tmp(n),:)*colscl;
    plot(ips_n2_value(n)',sort_acc_iPS_n2_accu(n)*100,'o','MarkerFaceColor', co_p,'MarkerEdgeColor', 'none');
    hold on;
end
hold all
plot(ips_n2_value,sort_acc_iPS_n2_accu*100,'.','MarkerEdgeColor','none');
linplot(ips_n2_value,sort_acc_iPS_n2_accu*100,[0.6 0.6 0.6]); set(gca,'box','off')
text([20 20],[70 70],['\itr = ' num2str(round(r6,2,'significant'))])
% text([20 20],[65 65],['\itp = ' num2str(round(p6,3))])
xlim([0 30]), ylim([60 100])
set(gcf,'Position',[50,55,1000,300],'Color','w');

%further tests
[R_base_ips,pvv] = corr(baseline_n2_value',ips_n2_value');
[R_base_s1,puu] = corr(baseline_n2_value',s1_n2_value');
[R_s1_ips,pmm] = corr(s1_n2_value',ips_n2_value');

for n=1:17; base_z(n)=(baseline_n2_value(n)-mean(baseline_n2_value))./std(baseline_n2_value); end
for n=1:17; ips_z(n)=(ips_n2_value(n)-mean(ips_n2_value))./std(ips_n2_value); end
Dval_b_i= base_z-ips_z; 
[R_base_ips_z,p_base_ips_z] = corr(sort_acc_iPS_n2_accu',Dval_b_i');

for n=1:17; s1_z(n)=(s1_n2_value(n)-mean(s1_n2_value))./std(s1_n2_value); end
for n=1:17; ips_z(n)=(ips_n2_value(n)-mean(ips_n2_value))./std(ips_n2_value); end
Dval_s_i= s1_z-ips_z; 
[R_s1_ips_z,p_s1_ips_z] = corr(sort_acc_iPS_n2_accu',Dval_s_i');

Dval_s_b = base_z - s1_z; 
[R_s1_base_z,p_s1_ips_z] = corr(sort_acc_loc_n2_accu',Dval_s_b');

p_fig3c_z=mafdr([p_base_ips_z p_s1_ips_z],'BHFDR', 'true');
