# Low-dimensional trajectories analysis of TMS-fMRI data

Ensure that all folders are on the MATLAB path and run 'main_manifold_analysis.m'. This will generate a number of figures (including Supplementary figures) and readouts pertaining to the manuscript.

A brief descriptor of folders added to the path:

'evaluated_data' : this contains all necessary processed data. It includes grouped, within session PHATE evaluated data for all participants across all sessions and trial conditions for correct and incorrect trials. It also contains participant behavioral performance (i.e. task accuracy) and region-of-interest (iPS) response for all participants during baseline and iPS sessions.

'neurosynth_inputs' : this was based on the approach for maps generated in Marguiles et al (2016) in Proc. Natl Acad. Sci. this is a reference folder containining the .nii used to generate NeuroSynth association maps presented in Supplementary Figure 2.

'BrainGraphTools' : Scripts adapted from https://git.bcbl.eu/brainhackdonostia/material-2019/-/blob/master/fMRI/graph_theory/PlotBrainGraph.m 

'subfunc' : miscellaneous scripts, functions

Tested on MATLAB 2020b and 2017b

Typical run time on standard desktop, <2 minutes on 16 GB RAM, 8GB graphics, i7 2.8GHZ
