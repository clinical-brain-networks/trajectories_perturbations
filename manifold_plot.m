%% Plot manifold by network community with trajectory

taskcond(allCtrlProc,6)=cc(1,1); taskcond(allCtrlProc,7)=cc(1,2); taskcond(allCtrlProc,8)=cc(1,3);
taskcond(allCrossCtrl,6)=cc(2,1); taskcond(allCrossCtrl,7)=cc(2,2);  taskcond(allCrossCtrl,8)=cc(2,3);
taskcond(allCtrlDefault,6)=cc(3,1); taskcond(allCtrlDefault,7)=cc(3,2); taskcond(allCtrlDefault,8)=cc(3,3);
taskcond(allNonhub,6)=cc(4,1); taskcond(allNonhub,7)=cc(4,2); taskcond(allNonhub,8)=cc(4,3);
val = taskcond(:,6:8);
markerBig=6;
[caz,cel] = view;  [caz,cel] = view(v);
for n=1:numel(allCtrlDefault);
    plot3(taskcond(allCtrlDefault(n),tpc(1)),taskcond(allCtrlDefault(n),tpc(2)),taskcond(allCtrlDefault(n),tpc(3)),'-o','Color',cc(3,:),'MarkerFaceColor',cc(3,:),'MarkerEdgeColor','k','MarkerSize',abs(sum(taskcond(allCtrlDefault(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
end

for n=1:numel(allCrossCtrl);
    plot3(taskcond(allCrossCtrl(n),tpc(1)),taskcond(allCrossCtrl(n),tpc(2)),taskcond(allCrossCtrl(n),tpc(3)),'-o','Color',cc(2,:),'MarkerFaceColor',cc(2,:),'MarkerEdgeColor','k','MarkerSize',abs(sum(taskcond(allCrossCtrl(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
end

for n=1:numel(allCtrlProc);
    plot3(taskcond(allCtrlProc(n),tpc(1)),taskcond(allCtrlProc(n),tpc(2)),taskcond(allCtrlProc(n),tpc(3)),'-o','Color',cc(1,:),'MarkerFaceColor',cc(1,:),'MarkerEdgeColor','k','MarkerSize',abs(sum(taskcond(allCtrlProc(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
end

for n=1:numel(allNonhub);
    plot3(taskcond(allNonhub(n),tpc(1)),taskcond(allNonhub(n),tpc(2)),taskcond(allNonhub(n),tpc(3)),'-o','Color',cc(4,:),'MarkerFaceColor',cc(4,:),'MarkerEdgeColor','k','MarkerSize',abs(sum(taskcond(allNonhub(n),:)))/max(abs(sum(taskcond,2)))*markerBig); hold on;
end

base_traj=interpft([taskcond(1:space:end,tpc(1)),taskcond(1:space:end,tpc(2)),taskcond(1:space:end,tpc(3))],size(gparc,1)*interpfac);
colormap(hsv(4))
surface([base_traj(:,1) base_traj(:,1)],[base_traj(:,2) base_traj(:,2)],[base_traj(:,3) base_traj(:,3)],[repmat(val(:,1),interpfac,1) repmat(val(:,3),interpfac,1)],'linewidth',.6,'LineStyle',linsty,'FaceColor','none','EdgeColor','interp','EdgeAlpha',1)
set(gca,'xtick',[]); set(gca,'ytick',[]); set(gca,'ztick',[]);  
