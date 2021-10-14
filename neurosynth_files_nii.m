% % THIS CODE IS AN EXAMPLE FOR A JUPYTER NOTEBOOK IMPLEMENTATION (will not run in
% % MATLAB
% 
% decoder = decode.Decoder(dataset, method='roi');
% 
% % # Set threshold:
% thr = 3.1;
% vmin = 5;
% vmax = 12;
% 
% tot = 5;
% data = decoder.decode([str('my_masks_t/nback2_%02d.nii' % (i)) 
%                       for i in xrange(1,21)],save='decoding_results_SDI_56subjs.txt')
% 
% df = []
% df = data.copy()
% newnames = []
% [newnames.append(('%s-%s' % (str(i * tot), str((i*tot) + tot)))) for i in xrange(0,len(df.columns))]
% df.columns = newnames
% df[df<thr] = 0 
% heatmapOrder = getOrder(np.array(df), thr)
% 
% sns.set(context="paper", font="sans-serif", font_scale=2)
% f, (ax1) = plt.subplots(nrows=1,ncols=1,figsize=(15, 10), sharey=True)
% plotData = df.reindex(df.index[heatmapOrder])
% cax = sns.heatmap(plotData, linewidths=1, square=True, cmap='Greys', robust=False, 
%             ax=ax1, vmin=0.5, vmax=vmax, mask=plotData == 0)
% sns.axlabel('Percentile along gradient', 'NeuroSynth topics terms')
% cbar = cax.collections[0].colorbar
% cbar.set_label('z-stat', rotation=270)
% cbar.set_ticks(ticks=[thr,vmax])
% cbar.set_ticklabels(ticklabels=[thr,vmax])
% cbar.outline.set_edgecolor('black')
% cbar.outline.set_linewidth(0.5)
% 
% plt.draw()