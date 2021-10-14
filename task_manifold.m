%% For Fig1. Within-session group Manifolds (correct and incorrect trials)

% load('subj_concat_Loc_nback1_correct_9s.mat')
% [correct_task.cond_baseline_1back,P, K,VNE_t,ex_struct_loc1] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_Loc_nback2_correct_9s.mat')
% [correct_task.cond_baseline_2back,P, K,VNE_t,ex_struct_loc2] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_s1_nback1_correct_9s.mat')
% [correct_task.cond_s1_1back,P, K,VNE_t,ex_struct_s_1] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_s1_nback2_correct_9s.mat')
% [correct_task.cond_s1_2back,P, K,VNE_t,ex_struct_s_2] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_ips_nback1_correct_9s.mat')
% [correct_task.cond_iPS_1back,P, K,VNE_t,ex_struct_ips1] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_ips_nback2_correct_9s.mat')
% [correct_task.cond_iPS_2back,P, K,VNE_t,ex_struct_ips2] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE); clearvars subj_concat
% 
% % uncomment below to save
% % save(['taskspecific_correct_knn_' num2str(knn) '_akernel_' num2str(akernel) '.mat'],'correct_task');
% 
% load('subj_concat_Loc_nback1_incorrect_9s.mat')
% [incorrect_task.cond_baseline_1back,VNE_t_baseline_1back] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_Loc_nback2_incorrect_9s.mat')
% [incorrect_task.cond_baseline_2back,VNE_t_baseline_2back] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_s1_nback1_incorrect_9s.mat')
% [incorrect_task.cond_s1_1back,VNE_t_s1_1back] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_s1_nback2_incorrect_9s.mat')
% [incorrect_task.cond_s1_2back,VNE_t_s1_2back] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_ips_nback1_incorrect_9s.mat')
% [incorrect_task.cond_iPS_1back,VNE_t_iPS_1back] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% load('subj_concat_ips_nback2_incorrect_9s.mat')
% [incorrect_task.cond_iPS_2back,VNE_t_iPS_2back] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); clearvars subj_concat
% 
% % uncomment below to save
% % save(['taskspecific_incorrect_knn_' num2str(knn) '_akernel_' num2str(akernel) '.mat'],'incorrect_task');

%% For Fig2. common space manifold

load('subj_concat_Loc_nback1_correct_9s.mat'); c1=subj_concat; clearvars subj_concat
load('subj_concat_s1_nback1_correct_9s.mat'); c2=subj_concat; clearvars subj_concat
load('subj_concat_ips_nback1_correct_9s.mat'); c3=subj_concat; clearvars subj_concat
load('subj_concat_Loc_nback2_correct_9s.mat'); c4=subj_concat; clearvars subj_concat
load('subj_concat_s1_nback2_correct_9s.mat'); c5=subj_concat; clearvars subj_concat
load('subj_concat_ips_nback2_correct_9s.mat'); c6=subj_concat; clearvars subj_concat

load('subj_concat_Loc_nback1_incorrect_9s.mat'); c_i1=subj_concat; clearvars subj_concat
load('subj_concat_s1_nback1_incorrect_9s.mat'); c_i2=subj_concat; clearvars subj_concat
load('subj_concat_ips_nback1_incorrect_9s.mat'); c_i3=subj_concat; clearvars subj_concat
load('subj_concat_Loc_nback2_incorrect_9s.mat'); c_i4=subj_concat; clearvars subj_concat
load('subj_concat_s1_nback2_incorrect_9s.mat'); c_i5=subj_concat; clearvars subj_concat
load('subj_concat_ips_nback2_incorrect_9s.mat'); c_i6=subj_concat; clearvars subj_concat



