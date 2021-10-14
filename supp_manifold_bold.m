%% Supp figure 3: fmri signal & regions

load baseline_1back_2back_bold_phate
load s1_1back_2back_bold_phate
load ips_1back_2back_bold_phate

d_base_ph1 = basen2_ph1_c1- basen1_ph1_c1;
d_s1_ph1 = s1n2_ph1_c1- s1n1_ph1_c1;
d_ips_ph1 = ipsn2_ph1_c1- ipsn1_ph1_c1;

%%

figure('Position',[50,55,900,600],'Name','Supp.Fig 3 System and local level changes for correct 2-back'), set(gcf,'color','w'),
subplot(2,2,1), 
bold2_base = [loc_2back_BOLD_ph1'; loc_2back_BOLD_ph2'; loc_2back_BOLD_ph3']';
bold2_s1 = [s1_2back_BOLD_ph1'; s1_2back_BOLD_ph2'; s1_2back_BOLD_ph3']';
bold2_ips = [ips_2back_BOLD_ph1'; ips_2back_BOLD_ph2'; ips_2back_BOLD_ph3']';
for n=1:17; plot(bold2_ips(n,:),'-ko','MarkerFaceColor',[0.6 0.6 0.6],'LineStyle','--','Color',[0.7 0.7 0.7]); hold on; end
xlim([0 4]); ylim([0 .5])
set(gca,'xtick',[1:3]);
text([1.45 1.45],[.45 .45],'*','fontsize',18)
text([2.45 2.45],[.48 .48],'n.s.','fontsize',14)
ylabel('fMRI signal (median)','fontsize',10); set(gca,'xticklabel',{'PHATE1','PHATE2','PHATE3'},'fontsize',10);
title('iPS')
set(gca,'box','off');
set(gcf,'Color','w'), 
d_dat_ph1=[d_base_ph1(:,1) d_s1_ph1(:,1) d_ips_ph1(:,1), d_base_ph1(:,2) d_s1_ph1(:,2) d_ips_ph1(:,2), d_base_ph1(:,3) d_s1_ph1(:,3) d_ips_ph1(:,3), d_base_ph1(:,4) d_s1_ph1(:,4) d_ips_ph1(:,4)];
net=2;
d_assoc_ph1=[d_base_ph1(:,net) d_s1_ph1(:,net) d_ips_ph1(:,net)];
hold on, line([1,1],[median(bold2_ips(:,1))-std(bold2_ips(:,1)),median(bold2_ips(:,1))+std(bold2_ips(:,1))],'Linewidth',2,'Color','k')
hold on, line([2,2],[median(bold2_ips(:,2))-std(bold2_ips(:,2)),median(bold2_ips(:,2))+std(bold2_ips(:,2))],'Linewidth',2,'Color','k')
hold on, line([3,3],[median(bold2_ips(:,3))-std(bold2_ips(:,3)),median(bold2_ips(:,3))+std(bold2_ips(:,3))],'Linewidth',2,'Color','k')
hold on, line([.8,1.2],[median(bold2_ips(:,1)) median(bold2_ips(:,1))],'Linewidth',2,'Color','r')
hold on, line([1.8,2.2],[median(bold2_ips(:,2)) median(bold2_ips(:,2))],'Linewidth',2,'Color','r')
hold on, line([2.8,3.2],[median(bold2_ips(:,3)) median(bold2_ips(:,3))],'Linewidth',2,'Color','r')
annotation(gcf,'textbox',...
    [0.076 0.94 0.035 0.046],...
    'String',{'a.'},...
    'FontWeight','bold',...
    'FontSize',14,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

subplot(2,2,2);
for n=1:17; plot(d_assoc_ph1(n,:),'-ko','MarkerFaceColor',[0.6 0.6 0.6],'LineStyle','--','Color',[0.7 0.7 0.7]); hold on; end
xlim([0 4]); %ylim([-.6 .6])
set(gca,'xtick',[1:3]);
ylabel('\Delta Associative network nodes','fontsize',8); set(gca,'xticklabel',{'Baseline','S1','iPS'},'fontsize',10);
title('PHATE1')
set(gca,'box','off');
text([2.45 2.45],[35 35],'*','fontsize',18)
text([1.45 1.45],[38 38],'n.s.','fontsize',14)
ylim([-35 45]);
com_delta_assoc = [basen1_ph1_c1(:,net) s1n1_ph1_c1(:,net) ipsn1_ph1_c1(:,net); basen2_ph1_c1(:,net) s1n2_ph1_c1(:,net) ipsn2_ph1_c1(:,net)];
title('PHATE1')
hold on, line([1,1],[median(d_assoc_ph1(:,1))-std(d_assoc_ph1(:,1)),median(d_assoc_ph1(:,1))+std(d_assoc_ph1(:,1))],'Linewidth',2,'Color','k')
hold on, line([2,2],[median(d_assoc_ph1(:,2))-std(d_assoc_ph1(:,2)),median(d_assoc_ph1(:,2))+std(d_assoc_ph1(:,2))],'Linewidth',2,'Color','k')
hold on, line([3,3],[median(d_assoc_ph1(:,3))-std(d_assoc_ph1(:,3)),median(d_assoc_ph1(:,3))+std(d_assoc_ph1(:,3))],'Linewidth',2,'Color','k')
hold on, line([.8,1.2],[median(d_assoc_ph1(:,1)) median(d_assoc_ph1(:,1))],'Linewidth',2,'Color','r')
hold on, line([1.8,2.2],[median(d_assoc_ph1(:,2)) median(d_assoc_ph1(:,2))],'Linewidth',2,'Color','r')
hold on, line([2.8,3.2],[median(d_assoc_ph1(:,3)) median(d_assoc_ph1(:,3))],'Linewidth',2,'Color','r')
annotation(gcf,'textbox',...
    [0.076 0.46 0.035 0.046],...
    'String',{'c.'},...
    'FontWeight','bold',...
    'FontSize',14,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);
%

load subj_base_bold_right_2back_corr
load subj_ips_bold_right_2back_corr

% right hemisphere iPS vs baseline
for n=1:17; pc_mn1_base_right(n,:)=median(abs(hilbert(subj_loc_tseries{n})).^2);  end
for n=1:17; pc_mn1_ips_right(n,:)=median(abs(hilbert(subj_ips_tseries{n})).^2); end  
n2back_base_ips_right=[pc_mn1_base_right pc_mn1_ips_right];

subplot(2,2,3)
for n=1:17; plot(n2back_base_ips_right(n,:),'-ko','MarkerFaceColor',[0.6 0.6 0.6],'LineStyle','--','Color',[0.7 0.7 0.7]); hold on; end
xlim([0 3]); %ylim([-.6 .6])
set(gca,'xtick',[1,2]);
ylabel('fMRI signal (median power)','fontsize',10); set(gca,'xticklabel',{'Baseline','iPS'},'fontsize',10);
% title('PHATE1')
set(gcf,'Color','w'); set(gca,'box','off');
text([1.45 1.45],[.45 .45],'*','fontsize',18)
title('2-back')
hold on, line([1,1],[median(n2back_base_ips_right(:,1))-std(n2back_base_ips_right(:,1)),median(n2back_base_ips_right(:,1))+std(n2back_base_ips_right(:,1))],'Linewidth',2,'Color','k')
hold on, line([2,2],[median(n2back_base_ips_right(:,2))-std(n2back_base_ips_right(:,2)),median(n2back_base_ips_right(:,2))+std(n2back_base_ips_right(:,2))],'Linewidth',2,'Color','k')
hold on, line([.8,1.2],[median(n2back_base_ips_right(:,1)) median(n2back_base_ips_right(:,1))],'Linewidth',2,'Color','r')
hold on, line([1.8,2.2],[median(n2back_base_ips_right(:,2)) median(n2back_base_ips_right(:,2))],'Linewidth',2,'Color','r')
annotation(gcf,'textbox',...
    [0.52 0.94 0.035 0.046],...
    'String',{'b.'},...
    'FontWeight','bold',...
    'FontSize',14,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


[ry,py]=corr(n2back_base_ips_right(idx_ips_n2_accu,2),ips_n2_value','Type','Pearson','Rows','complete');
col = [0.65 0.65 0.65]; 
subplot(2,2,4)
plot(n2back_base_ips_right(idx_ips_n2_accu,2),ips_n2_value','ko','MarkerFaceColor',[0.6 0.6 0.6])
linplot(n2back_base_ips_right(idx_ips_n2_accu,2),ips_n2_value',col);
ylim([0 20]); xlim([0 0.35])
text([.25 .25],[4 4],['\itr = ' num2str(round(ry,2,'significant'))])
text([.25 .25],[2.8 2.8],['\itp = ' num2str(round(py,3))])
% xlim([0 0.1]), ylim([60 100])
set(gcf,'Color','w'); set(gca,'box','off');
ylabel('Trajectory length'); xlabel('fMRI signal (median power)')
title('iPS 2-back')
mdl = fitlm(n2back_base_ips_right(idx_ips_n2_accu,2),ips_n2_value','linear','RobustOpts','on'); %check
annotation(gcf,'textbox',...
    [0.52 0.46 0.035 0.046],...
    'String',{'d.'},...
    'FontWeight','bold',...
    'FontSize',14,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

% %% supp fig3 tests (uncomment to run)
% 
% % Sessions by PHATE dimensions interaction 
% figure, 
% comtest=[bold2_base; bold2_s1; bold2_ips];
% nrep=17; 
% [~,~,stats] = anova2(comtest,nrep);
% 
% %post-hoc testing for Supp. Fig 3a
% figure, anova1(bold2_ips)
% [~,p_ph1_ph2_2back]=ttest(bold2_ips(:,1),bold2_ips(:,2));
% [~,p_ph1_ph3_2back]=ttest(bold2_ips(:,1),bold2_ips(:,3));
% [~,p_ph2_ph3_2back]=ttest(bold2_ips(:,2),bold2_ips(:,3));
% 
% post_hoc_supp3a=mafdr([p_ph1_ph2_2back p_ph1_ph3_2back p_ph2_ph3_2back],'BHFDR',true);
% 
% % % % 
% % Supp Fig 3b, associatve node
% nrep=17; 
% [~,~,stats] = anova2(com_delta_assoc,nrep);
% [~,p_base_s1_2back]=ttest(d_assoc_ph1(:,1),d_assoc_ph1(:,2));
% [~,p_base_ips_2back]=ttest(d_assoc_ph1(:,1),d_assoc_ph1(:,3));
% [~,p_s1_ips_2back]=ttest(d_assoc_ph1(:,2),d_assoc_ph1(:,3));
% 
% post_hoc_supp3b=mafdr([p_base_s1_2back p_base_ips_2back p_s1_ips_2back],'BHFDR',true);
% 
% 
% %supp fig 3c
% [~,p_s3c]=ttest(n2back_base_ips_right(:,1),n2back_base_ips_right(:,2));




