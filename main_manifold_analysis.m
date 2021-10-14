%% Low-dimensional Manifold Trajectory analyses for NCOMMS
tic
addpath([pwd '\evaluated_data']);
addpath([pwd '\subfunc']);

%% Evaluate Task-specific manifolds 
% PHATE parameters used for analysis
% Example use: [correct_task.cond_baseline_1back,P, K,VNE_t,ex_struct_loc1] = phate(subj_concat,'ndim',dimspec,'k',knn,'a',akernel,'t',tVNE,'pot_method','sqrt'); 
% where input, 'subj_concat' refers to concatenated timseries data in the form of REGIONS x TIME. For example, in our manuscript 333 regions x ~1000 time points 
% dimspec=5; % 5 dimensions, first 3 PCs + 4 and 5 as control PCs
% knn=10; % nearest neighbors
% akernel=35; % alpha decay kernel
% tVNE=32; % diffusion timescale, set by default parameter check for all subs (avg. value between 32 across 17 subs) 

load group_withinsession_correct_knn_10_akernel_35 % 
load group_withinsession_correct_sub_individual_knn_10_akernel_35 %
load group_withinsession_incorrect_knn_10_akernel_35
load group_withinsession_incorrect_sub_individual_knn_10_akernel_35
gparc_manifold      % Network communities
task_manifold_plot  % uses above network comms and plots phate components  
manifold_distances  % Distances calculated for Fig 1. PHATE1,2,3

%% Low-dimensional manifolds in common space
cspace_manifold; 

%% Remaining supplementary figures & table

% % % % % % % % Supplementary Table 1  % % % % % % % %
load taskcond_explained_var
expvar=1:3; explained_cond=[ex_struct_loc1(expvar) ex_struct_loc2(expvar) ex_struct_s_1(expvar) ex_struct_s_2(expvar) ex_struct_ips1(expvar) ex_struct_ips2(expvar)];

% % % % % % % % Supplementary Figure 2  % % % % % % % %
neurosynth_files_nii;

% % % % % % % % Supplementary Figure 3  % % % % % % % %
supp_manifold_bold 

toc
