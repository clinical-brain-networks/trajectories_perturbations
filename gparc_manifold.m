%%  Gordon networks manifold partioned into communities
% Adopted from https://doi.org/10.1016/j.celrep.2018.07.050

gparc = readtable('gordonParcels.xlsx');
communityID = unique(gparc.Community);
tmp_no=1:length(communityID);

for n=1:length(communityID);
    communityID{n,2}=num2str(tmp_no(n));
    community_idx{n}=find(contains(gparc.Community,communityID{n}));
end

% https://doi.org/10.1016/j.celrep.2018.07.050
ctrlprocID=[1,13,9,10]; % control-processing, sensory, Motor
crossctrlID=[2,3,5,6];% cross-control, CON, DAN, FPN; salience
ctrldefaultID=[4,8];% control-default
nonhubID=[11,12,7];   % non-hubs

allCtrlProc=cat(1,community_idx{ctrlprocID(1)},community_idx{ctrlprocID(2)},community_idx{ctrlprocID(3)},community_idx{ctrlprocID(4)});
allCrossCtrl=cat(1,community_idx{crossctrlID(1)},community_idx{crossctrlID(2)},community_idx{crossctrlID(3)},community_idx{crossctrlID(4)});
allCtrlDefault=cat(1,community_idx{ctrldefaultID(1)},community_idx{ctrldefaultID(2)});
allNonhub=cat(1,community_idx{nonhubID(1)},community_idx{nonhubID(2)},community_idx{nonhubID(3)});


