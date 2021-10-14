%% Plot manifold by network community 

taskcond(allCtrlProc,6)=cc(1,1); taskcond(allCtrlProc,7)=cc(1,2); taskcond(allCtrlProc,8)=cc(1,3);
taskcond(allCrossCtrl,6)=cc(2,1); taskcond(allCrossCtrl,7)=cc(2,2);  taskcond(allCrossCtrl,8)=cc(2,3);
taskcond(allCtrlDefault,6)=cc(3,1); taskcond(allCtrlDefault,7)=cc(3,2); taskcond(allCtrlDefault,8)=cc(3,3);
taskcond(allNonhub,6)=cc(4,1); taskcond(allNonhub,7)=cc(4,2); taskcond(allNonhub,8)=cc(4,3);
val = taskcond(:,6:8);
markerBig=6;

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

