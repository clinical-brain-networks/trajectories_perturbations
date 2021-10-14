%plot trajectory
% v = [-2 -6 2]; %orig
v = [-8 -14 4]; %orig
xlabel('P2','fontweight','bold'), ylabel('P3','fontweight','bold'), zlabel('P1','fontweight','bold'); 
[caz,cel] = view;  [caz,cel] = view(v); %grid off, 
base_traj=interpft([taskcond(1:space:end,tpc(1)),taskcond(1:space:end,tpc(2)),taskcond(1:space:end,tpc(3))],333*interpfac);
hold on, 
for nn=1:333; h2(nn)=plot3(taskcond(nn,tpc(2)),taskcond(nn,tpc(3)),taskcond(nn,tpc(1))+(n*2),'-o','Color',co_p,'MarkerFaceColor',val(nn,:),'MarkerEdgeColor',co_p,'MarkerSize',abs(sum(taskcond(nn,:)))/max(abs(sum(taskcond,2)))*3); hold on; end; 
h=plot3(base_traj(:,2),base_traj(:,3),base_traj(:,1)+(n*2),'-*','linewidth',.25,'Color',co_p,'MarkerEdgeColor','k','MarkerSize',0.05);
set(gca,'xtick',[]); set(gca,'ytick',[]); set(gca,'ztick',[]);
