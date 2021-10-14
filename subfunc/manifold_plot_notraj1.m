%% Plot manifold by network community with trajectory

taskcond(allCtrlProc,6)=cc(1,1); taskcond(allCtrlProc,7)=cc(1,2); taskcond(allCtrlProc,8)=cc(1,3);
taskcond(allCrossCtrl,6)=cc(2,1); taskcond(allCrossCtrl,7)=cc(2,2);  taskcond(allCrossCtrl,8)=cc(2,3);
taskcond(allCtrlDefault,6)=cc(3,1); taskcond(allCtrlDefault,7)=cc(3,2); taskcond(allCtrlDefault,8)=cc(3,3);
taskcond(allNonhub,6)=cc(4,1); taskcond(allNonhub,7)=cc(4,2); taskcond(allNonhub,8)=cc(4,3);
val = taskcond(:,6:8);
markerBig=6;

% ctrldefault = blue = 1
% ctrlproc  = yellow = 2;
% ctrldefault = cyan = 7
% nonhub = dark blue= 11

% if strcmp(tasktype,'Correct') ==1 || strcmp(tasktype,'Incorrect') ==1
    [caz,cel] = view;  [caz,cel] = view(v);
%     for n=1:numel(allCtrlDefault);
%         plot(taskcond(allCtrlDefault(n),xx),taskcond(allCtrlDefault(n),yy),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allCtrlDefault(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
%     end
%     
%     for n=1:numel(allCrossCtrl);
%         plot(taskcond(allCrossCtrl(n),xx),taskcond(allCrossCtrl(n),yy),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allCrossCtrl(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
%     end
%     
%     for n=1:numel(allCtrlProc);
%         plot(taskcond(allCtrlProc(n),xx),taskcond(allCtrlProc(n),yy),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allCtrlProc(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
%     end
%     
%     for n=1:numel(allNonhub);
%         plot(taskcond(allNonhub(n),xx),taskcond(allNonhub(n),yy),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allNonhub(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
%     end
%     
    
if strcmp(tsts,'unicol')==1
    [caz,cel] = view;  [caz,cel] = view(v);

    for n=1:numel(allCtrlDefault);
        plot3(taskcond(allCtrlDefault(n),xx),taskcond(allCtrlDefault(n),yy),taskcond(allCtrlProc(n),zz),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allCtrlDefault(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
    end
    
    for n=1:numel(allCrossCtrl);
        plot3(taskcond(allCrossCtrl(n),xx),taskcond(allCrossCtrl(n),yy),taskcond(allCtrlProc(n),zz),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allCrossCtrl(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
    end
    
    for n=1:numel(allCtrlProc);
        plot3(taskcond(allCtrlProc(n),xx),taskcond(allCtrlProc(n),yy),taskcond(allCtrlProc(n),zz),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allCtrlProc(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
    end
    
    for n=1:numel(allNonhub);
        plot3(taskcond(allNonhub(n),xx),taskcond(allNonhub(n),yy),taskcond(allNonhub(n),zz),'-o','Color',kvalsp,'MarkerFaceColor',kvalsp,'MarkerEdgeColor', 'k','MarkerSize',abs(sum(taskcond(allNonhub(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
    end
    
    
elseif strcmp(tasktype,'test') ==1
    
end

% xlabel('P1','fontweight','bold'), ylabel('P2','fontweight','bold'), zlabel('P3','fontweight','bold');
set(gcf,'color','w')

% base_traj=interpft([taskcond(1:space:end,tpc(1)),taskcond(1:space:end,tpc(2)),taskcond(1:space:end,tpc(3))],size(gparc,1)*interpfac);
% hold on,
% colormap(hsv(4));
% try
%     if strcmp(tasktype,'Correct') ==1 || strcmp(tasktype,'Incorrect') ==1
%         surface([base_traj(:,tpc(1)) base_traj(:,tpc(1))],[base_traj(:,tpc(2)) base_traj(:,tpc(2))],[base_traj(:,3) base_traj(:,3)],[repmat(val(:,2),interpfac,1) repmat(val(:,3),interpfac,1)],'linewidth',1,'LineStyle',linsty,'FaceColor','none','EdgeColor','interp','EdgeAlpha',alphv)
%     elseif strcmp(tasktype,'test') ==1
%         surface([base_traj(:,tpc(1)) base_traj(:,tpc(1))],[base_traj(:,tpc(2)) base_traj(:,tpc(2))],[base_traj(:,3) base_traj(:,3)],[repmat(val(:,2),interpfac,1) repmat(val(:,3),interpfac,1)],'linewidth',1,'LineStyle',linsty,'FaceColor','none','EdgeColor',colvalt,'EdgeAlpha',alphv)
%         
%     end
% catch
%     plot3(base_traj(:,1),base_traj(:,2),base_traj(:,3),'-','Color',cstr)
% end
set(gca,'xtick',[]); set(gca,'ytick',[]);% set(gca,'ztick',[]);
% view([v])
