#!/bin/bash

basepath=/home/vo16427/Data
echo -n "Which seed region? > "
read text


( cd $basepath ;
for i in 0??; do

cd $basepath/$i ;
echo 'working on=' $i

numvols=$(fslval /rdsfhome/pywer/Data/$i/epi.nii.gz dim4 | awk '{print $i}');

echo '


# FEAT version number
set fmri(version) 6.00

# Are we in MELODIC?
set fmri(inmelodic) 0

# Analysis level
# 1 : First-level analysis
# 2 : Higher-level analysis
set fmri(level) 1

# Which stages to run
# 0 : No first-level analysis (registration and/or group stats only)
# 7 : Full first-level analysis
# 1 : Pre-processing
# 2 : Statistics
set fmri(analysis) 7

# Use relative filenames
set fmri(relative_yn) 0

# Balloon help
set fmri(help_yn) 1

# Run Featwatcher
set fmri(featwatcher_yn) 0

# Cleanup first-level standard-space images
set fmri(sscleanup_yn) 0

# Output directory
set fmri(outputdir) "/home/vo16427/Data/'${i}'/'${text}'_all_nostc.feat"

# TR(s)
set fmri(tr) 3.000000 

# Total volumes
set fmri(npts) '${numvols}'

# Delete volumes
set fmri(ndelete) 0

# Perfusion tag/control order
set fmri(tagfirst) 1

# Number of first-level analyses
set fmri(multiple) 1

# Higher-level input type
# 1 : Inputs are lower-level FEAT directories
# 2 : Inputs are cope images from FEAT directories
set fmri(inputtype) 2

# Carry out pre-stats processing?
set fmri(filtering_yn) 0

# Brain/background threshold, %
set fmri(brain_thresh) 10

# Critical z for design efficiency calculation
set fmri(critical_z) 5.3

# Noise level
set fmri(noise) 0.66

# Noise AR(1)
set fmri(noisear) 0.34

# Motion correction
# 0 : None
# 1 : MCFLIRT
set fmri(mc) 0

# Spin-history (currently obsolete)
set fmri(sh_yn) 0

# B0 fieldmap unwarping?
set fmri(regunwarp_yn) 0

# EPI dwell time (ms)
set fmri(dwell) 0.47

# EPI TE (ms)
set fmri(te) 30

# % Signal loss threshold
set fmri(signallossthresh) 10

# Unwarp direction
set fmri(unwarp_dir) y

# Slice timing correction
# 0 : None
# 1 : Regular up (0, 1, 2, 3, ...)
# 2 : Regular down
# 3 : Use slice order file
# 4 : Use slice timings file
# 5 : Interleaved (0, 2, 4 ... 1, 3, 5 ... )
set fmri(st) 0

# Slice timings file
set fmri(st_file) ""

# BET brain extraction
set fmri(bet_yn) 0

# Spatial smoothing FWHM (mm)
set fmri(smooth) 0

# Intensity normalization
set fmri(norm_yn) 0

# Perfusion subtraction
set fmri(perfsub_yn) 0

# Highpass temporal filtering
set fmri(temphp_yn) 0

# Lowpass temporal filtering
set fmri(templp_yn) 0

# MELODIC ICA data exploration
set fmri(melodic_yn) 0

# Carry out main stats?
set fmri(stats_yn) 1

# Carry out prewhitening?
set fmri(prewhiten_yn) 0

# Add motion parameters to model
# 0 : No
# 1 : Yes
set fmri(motionevs) 0
set fmri(motionevsbeta) ""
set fmri(scriptevsbeta) ""

# Robust outlier detection in FLAME?
set fmri(robust_yn) 0

# Higher-level modelling
# 3 : Fixed effects
# 0 : Mixed Effects: Simple OLS
# 2 : Mixed Effects: FLAME 1
# 1 : Mixed Effects: FLAME 1+2
set fmri(mixed_yn) 2

# Number of EVs
set fmri(evs_orig) 12
set fmri(evs_real) 19
set fmri(evs_vox) 0

# Number of contrasts
set fmri(ncon_orig) 20
set fmri(ncon_real) 20

# Number of F-tests
set fmri(nftests_orig) 0
set fmri(nftests_real) 0

# Add constant column to design matrix? (obsolete)
set fmri(constcol) 0

# Carry out post-stats steps?
set fmri(poststats_yn) 1

# Pre-threshold masking?
set fmri(threshmask) ""

# Thresholding
# 0 : None
# 1 : Uncorrected
# 2 : Voxel
# 3 : Cluster
set fmri(thresh) 3

# P threshold
set fmri(prob_thresh) 0.05

# Z threshold
set fmri(z_thresh) 2.3

# Z min/max for colour rendering
# 0 : Use actual Z min/max
# 1 : Use preset Z min/max
set fmri(zdisplay) 0

# Z min in colour rendering
set fmri(zmin) 2

# Z max in colour rendering
set fmri(zmax) 8

# Colour rendering type
# 0 : Solid blobs
# 1 : Transparent blobs
set fmri(rendertype) 1

# Background image for higher-level stats overlays
# 1 : Mean highres
# 2 : First highres
# 3 : Mean functional
# 4 : First functional
# 5 : Standard space template
set fmri(bgimage) 1

# Create time series plots
set fmri(tsplot_yn) 0

# Registration to initial structural
set fmri(reginitial_highres_yn) 0

# Search space for registration to initial structural
# 0   : No search
# 90  : Normal search
# 180 : Full search
set fmri(reginitial_highres_search) 90

# Degrees of Freedom for registration to initial structural
set fmri(reginitial_highres_dof) 3

# Registration to main structural
set fmri(reghighres_yn) 0

# Search space for registration to main structural
# 0   : No search
# 90  : Normal search
# 180 : Full search
set fmri(reghighres_search) 90

# Degrees of Freedom for registration to main structural
set fmri(reghighres_dof) BBR

# Registration to standard image?
set fmri(regstandard_yn) 0

# Use alternate reference images?
set fmri(alternateReference_yn) 0

# Standard image
set fmri(regstandard) "/usr/local/fsl/data/standard/MNI152_T1_2mm_brain"

# Search space for registration to standard space
# 0   : No search
# 90  : Normal search
# 180 : Full search
set fmri(regstandard_search) 90

# Degrees of Freedom for registration to standard space
set fmri(regstandard_dof) 12

# Do nonlinear registration from structural to standard space?
set fmri(regstandard_nonlinear_yn) 0

# Control nonlinear warp field resolution
set fmri(regstandard_nonlinear_warpres) 5 

# High pass filter cutoff
set fmri(paradigm_hp) 90

# Total voxels
set fmri(totalVoxels) 224540160


# Number of lower-level copes feeding into higher-level analysis
set fmri(ncopeinputs) 0

# 4D AVW data or FEAT directory (1)
set feat_files(1) "/home/vo16427/Data/'${i}'/tests/res_mean_all_nost.nii.gz"

# Add confound EVs text file
set fmri(confoundevs) 0

# Subject s structural image for analysis 1
set highres_files(1) "/home/pywer/Data/'${i}'/vbm8bet/highres_new_brain"

# EV 1 title
set fmri(evtitle1) "watch5s"

# Basic waveform shape (EV 1)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape1) 3

# Convolution (EV 1)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve1) 2

# Convolve phase (EV 1)
set fmri(convolve_phase1) 0

# Apply temporal filtering (EV 1)
set fmri(tempfilt_yn1) 1

# Add temporal derivative (EV 1)
set fmri(deriv_yn1) 1

# Custom EV file (EV 1)
set fmri(custom1) "/home/pywer/Data/EVS/'${i}'/EV1_WATCH5S.txt"

# Gamma sigma (EV 1)
set fmri(gammasigma1) 3

# Gamma delay (EV 1)
set fmri(gammadelay1) 6

# Orthogonalise EV 1 wrt EV 0
set fmri(ortho1.0) 0

# Orthogonalise EV 1 wrt EV 1
set fmri(ortho1.1) 0

# Orthogonalise EV 1 wrt EV 2
set fmri(ortho1.2) 0

# Orthogonalise EV 1 wrt EV 3
set fmri(ortho1.3) 0

# Orthogonalise EV 1 wrt EV 4
set fmri(ortho1.4) 0

# Orthogonalise EV 1 wrt EV 5
set fmri(ortho1.5) 0

# Orthogonalise EV 1 wrt EV 6
set fmri(ortho1.6) 0

# Orthogonalise EV 1 wrt EV 7
set fmri(ortho1.7) 0

# Orthogonalise EV 1 wrt EV 8
set fmri(ortho1.8) 0

# Orthogonalise EV 1 wrt EV 9
set fmri(ortho1.9) 0

# Orthogonalise EV 1 wrt EV 10
set fmri(ortho1.10) 0

# Orthogonalise EV 1 wrt EV 11
set fmri(ortho1.11) 0

# Orthogonalise EV 1 wrt EV 12
set fmri(ortho1.12) 0

# EV 2 title
set fmri(evtitle2) "control"

# Basic waveform shape (EV 2)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape2) 3

# Convolution (EV 2)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve2) 2

# Convolve phase (EV 2)
set fmri(convolve_phase2) 0

# Apply temporal filtering (EV 2)
set fmri(tempfilt_yn2) 1

# Add temporal derivative (EV 2)
set fmri(deriv_yn2) 1

# Custom EV file (EV 2)
set fmri(custom2) "/home/pywer/Data/EVS/'${i}'/EV2_CONTROL.txt"

# Gamma sigma (EV 2)
set fmri(gammasigma2) 3

# Gamma delay (EV 2)
set fmri(gammadelay2) 6

# Orthogonalise EV 2 wrt EV 0
set fmri(ortho2.0) 0

# Orthogonalise EV 2 wrt EV 1
set fmri(ortho2.1) 0

# Orthogonalise EV 2 wrt EV 2
set fmri(ortho2.2) 0

# Orthogonalise EV 2 wrt EV 3
set fmri(ortho2.3) 0

# Orthogonalise EV 2 wrt EV 4
set fmri(ortho2.4) 0

# Orthogonalise EV 2 wrt EV 5
set fmri(ortho2.5) 0

# Orthogonalise EV 2 wrt EV 6
set fmri(ortho2.6) 0

# Orthogonalise EV 2 wrt EV 7
set fmri(ortho2.7) 0

# Orthogonalise EV 2 wrt EV 8
set fmri(ortho2.8) 0

# Orthogonalise EV 2 wrt EV 9
set fmri(ortho2.9) 0

# Orthogonalise EV 2 wrt EV 10
set fmri(ortho2.10) 0

# Orthogonalise EV 2 wrt EV 11
set fmri(ortho2.11) 0

# Orthogonalise EV 2 wrt EV 12
set fmri(ortho2.12) 0

# EV 3 title
set fmri(evtitle3) "easyhigh"

# Basic waveform shape (EV 3)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape3) 3

# Convolution (EV 3)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve3) 2

# Convolve phase (EV 3)
set fmri(convolve_phase3) 0

# Apply temporal filtering (EV 3)
set fmri(tempfilt_yn3) 1

# Add temporal derivative (EV 3)
set fmri(deriv_yn3) 1

# Custom EV file (EV 3)
set fmri(custom3) "/home/pywer/Data/EVS/'${i}'/EV3_EASY_HIGH.txt"

# Gamma sigma (EV 3)
set fmri(gammasigma3) 3

# Gamma delay (EV 3)
set fmri(gammadelay3) 6

# Orthogonalise EV 3 wrt EV 0
set fmri(ortho3.0) 0

# Orthogonalise EV 3 wrt EV 1
set fmri(ortho3.1) 0

# Orthogonalise EV 3 wrt EV 2
set fmri(ortho3.2) 0

# Orthogonalise EV 3 wrt EV 3
set fmri(ortho3.3) 0

# Orthogonalise EV 3 wrt EV 4
set fmri(ortho3.4) 0

# Orthogonalise EV 3 wrt EV 5
set fmri(ortho3.5) 0

# Orthogonalise EV 3 wrt EV 6
set fmri(ortho3.6) 0

# Orthogonalise EV 3 wrt EV 7
set fmri(ortho3.7) 0

# Orthogonalise EV 3 wrt EV 8
set fmri(ortho3.8) 0

# Orthogonalise EV 3 wrt EV 9
set fmri(ortho3.9) 0

# Orthogonalise EV 3 wrt EV 10
set fmri(ortho3.10) 0

# Orthogonalise EV 3 wrt EV 11
set fmri(ortho3.11) 0

# Orthogonalise EV 3 wrt EV 12
set fmri(ortho3.12) 0

# EV 4 title
set fmri(evtitle4) "hardhigh"

# Basic waveform shape (EV 4)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape4) 3

# Convolution (EV 4)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve4) 2

# Convolve phase (EV 4)
set fmri(convolve_phase4) 0

# Apply temporal filtering (EV 4)
set fmri(tempfilt_yn4) 1

# Add temporal derivative (EV 4)
set fmri(deriv_yn4) 1

# Custom EV file (EV 4)
set fmri(custom4) "/home/pywer/Data/EVS/'${i}'/EV4_HARD_HIGH.txt"

# Gamma sigma (EV 4)
set fmri(gammasigma4) 3

# Gamma delay (EV 4)
set fmri(gammadelay4) 6

# Orthogonalise EV 4 wrt EV 0
set fmri(ortho4.0) 0

# Orthogonalise EV 4 wrt EV 1
set fmri(ortho4.1) 0

# Orthogonalise EV 4 wrt EV 2
set fmri(ortho4.2) 0

# Orthogonalise EV 4 wrt EV 3
set fmri(ortho4.3) 0

# Orthogonalise EV 4 wrt EV 4
set fmri(ortho4.4) 0

# Orthogonalise EV 4 wrt EV 5
set fmri(ortho4.5) 0

# Orthogonalise EV 4 wrt EV 6
set fmri(ortho4.6) 0

# Orthogonalise EV 4 wrt EV 7
set fmri(ortho4.7) 0

# Orthogonalise EV 4 wrt EV 8
set fmri(ortho4.8) 0

# Orthogonalise EV 4 wrt EV 9
set fmri(ortho4.9) 0

# Orthogonalise EV 4 wrt EV 10
set fmri(ortho4.10) 0

# Orthogonalise EV 4 wrt EV 11
set fmri(ortho4.11) 0

# Orthogonalise EV 4 wrt EV 12
set fmri(ortho4.12) 0

# EV 5 title
set fmri(evtitle5) "easylow"

# Basic waveform shape (EV 5)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape5) 3

# Convolution (EV 5)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve5) 2

# Convolve phase (EV 5)
set fmri(convolve_phase5) 0

# Apply temporal filtering (EV 5)
set fmri(tempfilt_yn5) 1

# Add temporal derivative (EV 5)
set fmri(deriv_yn5) 1

# Custom EV file (EV 5)
set fmri(custom5) "/home/pywer/Data/EVS/'${i}'/EV5_EASY_LOW.txt"

# Gamma sigma (EV 5)
set fmri(gammasigma5) 3

# Gamma delay (EV 5)
set fmri(gammadelay5) 6

# Orthogonalise EV 5 wrt EV 0
set fmri(ortho5.0) 0

# Orthogonalise EV 5 wrt EV 1
set fmri(ortho5.1) 0

# Orthogonalise EV 5 wrt EV 2
set fmri(ortho5.2) 0

# Orthogonalise EV 5 wrt EV 3
set fmri(ortho5.3) 0

# Orthogonalise EV 5 wrt EV 4
set fmri(ortho5.4) 0

# Orthogonalise EV 5 wrt EV 5
set fmri(ortho5.5) 0

# Orthogonalise EV 5 wrt EV 6
set fmri(ortho5.6) 0

# Orthogonalise EV 5 wrt EV 7
set fmri(ortho5.7) 0

# Orthogonalise EV 5 wrt EV 8
set fmri(ortho5.8) 0

# Orthogonalise EV 5 wrt EV 9
set fmri(ortho5.9) 0

# Orthogonalise EV 5 wrt EV 10
set fmri(ortho5.10) 0

# Orthogonalise EV 5 wrt EV 11
set fmri(ortho5.11) 0

# Orthogonalise EV 5 wrt EV 12
set fmri(ortho5.12) 0

# EV 6 title
set fmri(evtitle6) "hardlow"

# Basic waveform shape (EV 6)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape6) 3

# Convolution (EV 6)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve6) 2

# Convolve phase (EV 6)
set fmri(convolve_phase6) 0

# Apply temporal filtering (EV 6)
set fmri(tempfilt_yn6) 1

# Add temporal derivative (EV 6)
set fmri(deriv_yn6) 1

# Custom EV file (EV 6)
set fmri(custom6) "/home/pywer/Data/EVS/'${i}'/EV6_HARD_LOW.txt"

# Gamma sigma (EV 6)
set fmri(gammasigma6) 3

# Gamma delay (EV 6)
set fmri(gammadelay6) 6

# Orthogonalise EV 6 wrt EV 0
set fmri(ortho6.0) 0

# Orthogonalise EV 6 wrt EV 1
set fmri(ortho6.1) 0

# Orthogonalise EV 6 wrt EV 2
set fmri(ortho6.2) 0

# Orthogonalise EV 6 wrt EV 3
set fmri(ortho6.3) 0

# Orthogonalise EV 6 wrt EV 4
set fmri(ortho6.4) 0

# Orthogonalise EV 6 wrt EV 5
set fmri(ortho6.5) 0

# Orthogonalise EV 6 wrt EV 6
set fmri(ortho6.6) 0

# Orthogonalise EV 6 wrt EV 7
set fmri(ortho6.7) 0

# Orthogonalise EV 6 wrt EV 8
set fmri(ortho6.8) 0

# Orthogonalise EV 6 wrt EV 9
set fmri(ortho6.9) 0

# Orthogonalise EV 6 wrt EV 10
set fmri(ortho6.10) 0

# Orthogonalise EV 6 wrt EV 11
set fmri(ortho6.11) 0

# Orthogonalise EV 6 wrt EV 12
set fmri(ortho6.12) 0

# EV 7 title
set fmri(evtitle7) "NRS"

# Basic waveform shape (EV 7)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape7) 3

# Convolution (EV 7)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve7) 2

# Convolve phase (EV 7)
set fmri(convolve_phase7) 0

# Apply temporal filtering (EV 7)
set fmri(tempfilt_yn7) 1

# Add temporal derivative (EV 7)
set fmri(deriv_yn7) 1

# Custom EV file (EV 7)
set fmri(custom7) "/home/pywer/Data/EVS/'${i}'/EV7_NRS.txt"

# Gamma sigma (EV 7)
set fmri(gammasigma7) 3

# Gamma delay (EV 7)
set fmri(gammadelay7) 6

# Orthogonalise EV 7 wrt EV 0
set fmri(ortho7.0) 0

# Orthogonalise EV 7 wrt EV 1
set fmri(ortho7.1) 0

# Orthogonalise EV 7 wrt EV 2
set fmri(ortho7.2) 0

# Orthogonalise EV 7 wrt EV 3
set fmri(ortho7.3) 0

# Orthogonalise EV 7 wrt EV 4
set fmri(ortho7.4) 0

# Orthogonalise EV 7 wrt EV 5
set fmri(ortho7.5) 0

# Orthogonalise EV 7 wrt EV 6
set fmri(ortho7.6) 0

# Orthogonalise EV 7 wrt EV 7
set fmri(ortho7.7) 0

# Orthogonalise EV 7 wrt EV 8
set fmri(ortho7.8) 0

# Orthogonalise EV 7 wrt EV 9
set fmri(ortho7.9) 0

# Orthogonalise EV 7 wrt EV 10
set fmri(ortho7.10) 0

# Orthogonalise EV 7 wrt EV 11
set fmri(ortho7.11) 0

# Orthogonalise EV 7 wrt EV 12
set fmri(ortho7.12) 0

# EV 8 title
set fmri(evtitle8) "Phys"

# Basic waveform shape (EV 8)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape8) 2

# Convolution (EV 8)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve8) 0

# Convolve phase (EV 8)
set fmri(convolve_phase8) 0

# Apply temporal filtering (EV 8)
set fmri(tempfilt_yn8) 0

# Add temporal derivative (EV 8)
set fmri(deriv_yn8) 0

# Custom EV file (EV 8)
set fmri(custom8) "/home/vo16427/Data/'${i}'/'${text}'_all_nostc.txt"

# Orthogonalise EV 8 wrt EV 0
set fmri(ortho8.0) 0

# Orthogonalise EV 8 wrt EV 1
set fmri(ortho8.1) 0

# Orthogonalise EV 8 wrt EV 2
set fmri(ortho8.2) 0

# Orthogonalise EV 8 wrt EV 3
set fmri(ortho8.3) 0

# Orthogonalise EV 8 wrt EV 4
set fmri(ortho8.4) 0

# Orthogonalise EV 8 wrt EV 5
set fmri(ortho8.5) 0

# Orthogonalise EV 8 wrt EV 6
set fmri(ortho8.6) 0

# Orthogonalise EV 8 wrt EV 7
set fmri(ortho8.7) 0

# Orthogonalise EV 8 wrt EV 8
set fmri(ortho8.8) 0

# Orthogonalise EV 8 wrt EV 9
set fmri(ortho8.9) 0

# Orthogonalise EV 8 wrt EV 10
set fmri(ortho8.10) 0

# Orthogonalise EV 8 wrt EV 11
set fmri(ortho8.11) 0

# Orthogonalise EV 8 wrt EV 12
set fmri(ortho8.12) 0

# EV 9 title
set fmri(evtitle9) "PPI_EH"

# Basic waveform shape (EV 9)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape9) 4

# Convolution (EV 9)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve9) 0

# Convolve phase (EV 9)
set fmri(convolve_phase9) 0

# Apply temporal filtering (EV 9)
set fmri(tempfilt_yn9) 0

# Add temporal derivative (EV 9)
set fmri(deriv_yn9) 0

# Interactions (EV 9 with EV 1)
set fmri(interactions9.1) 0

# Demean before using in interactions (EV 9 with EV 1)
set fmri(interactionsd9.1) 0

# Interactions (EV 9 with EV 2)
set fmri(interactions9.2) 0

# Demean before using in interactions (EV 9 with EV 2)
set fmri(interactionsd9.2) 0

# Interactions (EV 9 with EV 3)
set fmri(interactions9.3) 1

# Demean before using in interactions (EV 9 with EV 3)
set fmri(interactionsd9.3) 1

# Interactions (EV 9 with EV 4)
set fmri(interactions9.4) 0

# Demean before using in interactions (EV 9 with EV 4)
set fmri(interactionsd9.4) 0

# Interactions (EV 9 with EV 5)
set fmri(interactions9.5) 0

# Demean before using in interactions (EV 9 with EV 5)
set fmri(interactionsd9.5) 0

# Interactions (EV 9 with EV 6)
set fmri(interactions9.6) 0

# Demean before using in interactions (EV 9 with EV 6)
set fmri(interactionsd9.6) 0

# Interactions (EV 9 with EV 7)
set fmri(interactions9.7) 0

# Demean before using in interactions (EV 9 with EV 7)
set fmri(interactionsd9.7) 0

# Interactions (EV 9 with EV 8)
set fmri(interactions9.8) 1

# Demean before using in interactions (EV 9 with EV 8)
set fmri(interactionsd9.8) 2

# Orthogonalise EV 9 wrt EV 0
set fmri(ortho9.0) 0

# Orthogonalise EV 9 wrt EV 1
set fmri(ortho9.1) 0

# Orthogonalise EV 9 wrt EV 2
set fmri(ortho9.2) 0

# Orthogonalise EV 9 wrt EV 3
set fmri(ortho9.3) 0

# Orthogonalise EV 9 wrt EV 4
set fmri(ortho9.4) 0

# Orthogonalise EV 9 wrt EV 5
set fmri(ortho9.5) 0

# Orthogonalise EV 9 wrt EV 6
set fmri(ortho9.6) 0

# Orthogonalise EV 9 wrt EV 7
set fmri(ortho9.7) 0

# Orthogonalise EV 9 wrt EV 8
set fmri(ortho9.8) 0

# Orthogonalise EV 9 wrt EV 9
set fmri(ortho9.9) 0

# Orthogonalise EV 9 wrt EV 10
set fmri(ortho9.10) 0

# Orthogonalise EV 9 wrt EV 11
set fmri(ortho9.11) 0

# Orthogonalise EV 9 wrt EV 12
set fmri(ortho9.12) 0

# EV 10 title
set fmri(evtitle10) "PPI_HH"

# Basic waveform shape (EV 10)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape10) 4

# Convolution (EV 10)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve10) 0

# Convolve phase (EV 10)
set fmri(convolve_phase10) 0

# Apply temporal filtering (EV 10)
set fmri(tempfilt_yn10) 0

# Add temporal derivative (EV 10)
set fmri(deriv_yn10) 0

# Interactions (EV 10 with EV 1)
set fmri(interactions10.1) 0

# Demean before using in interactions (EV 10 with EV 1)
set fmri(interactionsd10.1) 0

# Interactions (EV 10 with EV 2)
set fmri(interactions10.2) 0

# Demean before using in interactions (EV 10 with EV 2)
set fmri(interactionsd10.2) 0

# Interactions (EV 10 with EV 3)
set fmri(interactions10.3) 0

# Demean before using in interactions (EV 10 with EV 3)
set fmri(interactionsd10.3) 0

# Interactions (EV 10 with EV 4)
set fmri(interactions10.4) 1

# Demean before using in interactions (EV 10 with EV 4)
set fmri(interactionsd10.4) 1

# Interactions (EV 10 with EV 5)
set fmri(interactions10.5) 0

# Demean before using in interactions (EV 10 with EV 5)
set fmri(interactionsd10.5) 0

# Interactions (EV 10 with EV 6)
set fmri(interactions10.6) 0

# Demean before using in interactions (EV 10 with EV 6)
set fmri(interactionsd10.6) 0

# Interactions (EV 10 with EV 7)
set fmri(interactions10.7) 0

# Demean before using in interactions (EV 10 with EV 7)
set fmri(interactionsd10.7) 0

# Interactions (EV 10 with EV 8)
set fmri(interactions10.8) 1

# Demean before using in interactions (EV 10 with EV 8)
set fmri(interactionsd10.8) 2

# Interactions (EV 10 with EV 9)
set fmri(interactions10.9) 0

# Demean before using in interactions (EV 10 with EV 9)
set fmri(interactionsd10.9) 0

# Orthogonalise EV 10 wrt EV 0
set fmri(ortho10.0) 0

# Orthogonalise EV 10 wrt EV 1
set fmri(ortho10.1) 0

# Orthogonalise EV 10 wrt EV 2
set fmri(ortho10.2) 0

# Orthogonalise EV 10 wrt EV 3
set fmri(ortho10.3) 0

# Orthogonalise EV 10 wrt EV 4
set fmri(ortho10.4) 0

# Orthogonalise EV 10 wrt EV 5
set fmri(ortho10.5) 0

# Orthogonalise EV 10 wrt EV 6
set fmri(ortho10.6) 0

# Orthogonalise EV 10 wrt EV 7
set fmri(ortho10.7) 0

# Orthogonalise EV 10 wrt EV 8
set fmri(ortho10.8) 0

# Orthogonalise EV 10 wrt EV 9
set fmri(ortho10.9) 0

# Orthogonalise EV 10 wrt EV 10
set fmri(ortho10.10) 0

# Orthogonalise EV 10 wrt EV 11
set fmri(ortho10.11) 0

# Orthogonalise EV 10 wrt EV 12
set fmri(ortho10.12) 0

# EV 11 title
set fmri(evtitle11) "PPI_EL"

# Basic waveform shape (EV 11)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape11) 4

# Convolution (EV 11)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve11) 0

# Convolve phase (EV 11)
set fmri(convolve_phase11) 0

# Apply temporal filtering (EV 11)
set fmri(tempfilt_yn11) 0

# Add temporal derivative (EV 11)
set fmri(deriv_yn11) 0

# Interactions (EV 11 with EV 1)
set fmri(interactions11.1) 0

# Demean before using in interactions (EV 11 with EV 1)
set fmri(interactionsd11.1) 0

# Interactions (EV 11 with EV 2)
set fmri(interactions11.2) 0

# Demean before using in interactions (EV 11 with EV 2)
set fmri(interactionsd11.2) 0

# Interactions (EV 11 with EV 3)
set fmri(interactions11.3) 0

# Demean before using in interactions (EV 11 with EV 3)
set fmri(interactionsd11.3) 0

# Interactions (EV 11 with EV 4)
set fmri(interactions11.4) 0

# Demean before using in interactions (EV 11 with EV 4)
set fmri(interactionsd11.4) 0

# Interactions (EV 11 with EV 5)
set fmri(interactions11.5) 1

# Demean before using in interactions (EV 11 with EV 5)
set fmri(interactionsd11.5) 1

# Interactions (EV 11 with EV 6)
set fmri(interactions11.6) 0

# Demean before using in interactions (EV 11 with EV 6)
set fmri(interactionsd11.6) 0

# Interactions (EV 11 with EV 7)
set fmri(interactions11.7) 0

# Demean before using in interactions (EV 11 with EV 7)
set fmri(interactionsd11.7) 0

# Interactions (EV 11 with EV 8)
set fmri(interactions11.8) 1

# Demean before using in interactions (EV 11 with EV 8)
set fmri(interactionsd11.8) 2

# Interactions (EV 11 with EV 9)
set fmri(interactions11.9) 0

# Demean before using in interactions (EV 11 with EV 9)
set fmri(interactionsd11.9) 0

# Interactions (EV 11 with EV 10)
set fmri(interactions11.10) 0

# Demean before using in interactions (EV 11 with EV 10)
set fmri(interactionsd11.10) 0

# Orthogonalise EV 11 wrt EV 0
set fmri(ortho11.0) 0

# Orthogonalise EV 11 wrt EV 1
set fmri(ortho11.1) 0

# Orthogonalise EV 11 wrt EV 2
set fmri(ortho11.2) 0

# Orthogonalise EV 11 wrt EV 3
set fmri(ortho11.3) 0

# Orthogonalise EV 11 wrt EV 4
set fmri(ortho11.4) 0

# Orthogonalise EV 11 wrt EV 5
set fmri(ortho11.5) 0

# Orthogonalise EV 11 wrt EV 6
set fmri(ortho11.6) 0

# Orthogonalise EV 11 wrt EV 7
set fmri(ortho11.7) 0

# Orthogonalise EV 11 wrt EV 8
set fmri(ortho11.8) 0

# Orthogonalise EV 11 wrt EV 9
set fmri(ortho11.9) 0

# Orthogonalise EV 11 wrt EV 10
set fmri(ortho11.10) 0

# Orthogonalise EV 11 wrt EV 11
set fmri(ortho11.11) 0

# Orthogonalise EV 11 wrt EV 12
set fmri(ortho11.12) 0

# EV 12 title
set fmri(evtitle12) "PPI_HL"

# Basic waveform shape (EV 12)
# 0 : Square
# 1 : Sinusoid
# 2 : Custom (1 entry per volume)
# 3 : Custom (3 column format)
# 4 : Interaction
# 10 : Empty (all zeros)
set fmri(shape12) 4

# Convolution (EV 12)
# 0 : None
# 1 : Gaussian
# 2 : Gamma
# 3 : Double-Gamma HRF
# 4 : Gamma basis functions
# 5 : Sine basis functions
# 6 : FIR basis functions
set fmri(convolve12) 0

# Convolve phase (EV 12)
set fmri(convolve_phase12) 0

# Apply temporal filtering (EV 12)
set fmri(tempfilt_yn12) 0

# Add temporal derivative (EV 12)
set fmri(deriv_yn12) 0

# Interactions (EV 12 with EV 1)
set fmri(interactions12.1) 0

# Demean before using in interactions (EV 12 with EV 1)
set fmri(interactionsd12.1) 0

# Interactions (EV 12 with EV 2)
set fmri(interactions12.2) 0

# Demean before using in interactions (EV 12 with EV 2)
set fmri(interactionsd12.2) 0

# Interactions (EV 12 with EV 3)
set fmri(interactions12.3) 0

# Demean before using in interactions (EV 12 with EV 3)
set fmri(interactionsd12.3) 0

# Interactions (EV 12 with EV 4)
set fmri(interactions12.4) 0

# Demean before using in interactions (EV 12 with EV 4)
set fmri(interactionsd12.4) 0

# Interactions (EV 12 with EV 5)
set fmri(interactions12.5) 0

# Demean before using in interactions (EV 12 with EV 5)
set fmri(interactionsd12.5) 0

# Interactions (EV 12 with EV 6)
set fmri(interactions12.6) 1

# Demean before using in interactions (EV 12 with EV 6)
set fmri(interactionsd12.6) 1

# Interactions (EV 12 with EV 7)
set fmri(interactions12.7) 0

# Demean before using in interactions (EV 12 with EV 7)
set fmri(interactionsd12.7) 0

# Interactions (EV 12 with EV 8)
set fmri(interactions12.8) 1

# Demean before using in interactions (EV 12 with EV 8)
set fmri(interactionsd12.8) 2

# Interactions (EV 12 with EV 9)
set fmri(interactions12.9) 0

# Demean before using in interactions (EV 12 with EV 9)
set fmri(interactionsd12.9) 0

# Interactions (EV 12 with EV 10)
set fmri(interactions12.10) 0

# Demean before using in interactions (EV 12 with EV 10)
set fmri(interactionsd12.10) 0

# Interactions (EV 12 with EV 11)
set fmri(interactions12.11) 0

# Demean before using in interactions (EV 12 with EV 11)
set fmri(interactionsd12.11) 0

# Orthogonalise EV 12 wrt EV 0
set fmri(ortho12.0) 0

# Orthogonalise EV 12 wrt EV 1
set fmri(ortho12.1) 0

# Orthogonalise EV 12 wrt EV 2
set fmri(ortho12.2) 0

# Orthogonalise EV 12 wrt EV 3
set fmri(ortho12.3) 0

# Orthogonalise EV 12 wrt EV 4
set fmri(ortho12.4) 0

# Orthogonalise EV 12 wrt EV 5
set fmri(ortho12.5) 0

# Orthogonalise EV 12 wrt EV 6
set fmri(ortho12.6) 0

# Orthogonalise EV 12 wrt EV 7
set fmri(ortho12.7) 0

# Orthogonalise EV 12 wrt EV 8
set fmri(ortho12.8) 0

# Orthogonalise EV 12 wrt EV 9
set fmri(ortho12.9) 0

# Orthogonalise EV 12 wrt EV 10
set fmri(ortho12.10) 0

# Orthogonalise EV 12 wrt EV 11
set fmri(ortho12.11) 0

# Orthogonalise EV 12 wrt EV 12
set fmri(ortho12.12) 0

# Contrast & F-tests mode
# real : control real EVs
# orig : control original EVs
set fmri(con_mode_old) orig
set fmri(con_mode) orig

# Display images for contrast_real 1
set fmri(conpic_real.1) 0

# Title for contrast_real 1
set fmri(conname_real.1) "PHYS"

# Real contrast_real vector 1 element 1
set fmri(con_real1.1) 0.0

# Real contrast_real vector 1 element 2
set fmri(con_real1.2) 0

# Real contrast_real vector 1 element 3
set fmri(con_real1.3) 0

# Real contrast_real vector 1 element 4
set fmri(con_real1.4) 0

# Real contrast_real vector 1 element 5
set fmri(con_real1.5) 0.0

# Real contrast_real vector 1 element 6
set fmri(con_real1.6) 0

# Real contrast_real vector 1 element 7
set fmri(con_real1.7) 0

# Real contrast_real vector 1 element 8
set fmri(con_real1.8) 0

# Real contrast_real vector 1 element 9
set fmri(con_real1.9) 0

# Real contrast_real vector 1 element 10
set fmri(con_real1.10) 0

# Real contrast_real vector 1 element 11
set fmri(con_real1.11) 0

# Real contrast_real vector 1 element 12
set fmri(con_real1.12) 0

# Real contrast_real vector 1 element 13
set fmri(con_real1.13) 0

# Real contrast_real vector 1 element 14
set fmri(con_real1.14) 0

# Real contrast_real vector 1 element 15
set fmri(con_real1.15) 1.0

# Real contrast_real vector 1 element 16
set fmri(con_real1.16) 0

# Real contrast_real vector 1 element 17
set fmri(con_real1.17) 0

# Real contrast_real vector 1 element 18
set fmri(con_real1.18) 0

# Real contrast_real vector 1 element 19
set fmri(con_real1.19) 0

# Display images for contrast_real 2
set fmri(conpic_real.2) 0

# Title for contrast_real 2
set fmri(conname_real.2) "MED +"

# Real contrast_real vector 2 element 1
set fmri(con_real2.1) 0

# Real contrast_real vector 2 element 2
set fmri(con_real2.2) 0

# Real contrast_real vector 2 element 3
set fmri(con_real2.3) 0.0

# Real contrast_real vector 2 element 4
set fmri(con_real2.4) 0

# Real contrast_real vector 2 element 5
set fmri(con_real2.5) -1.0

# Real contrast_real vector 2 element 6
set fmri(con_real2.6) 0

# Real contrast_real vector 2 element 7
set fmri(con_real2.7) 1.0

# Real contrast_real vector 2 element 8
set fmri(con_real2.8) 0

# Real contrast_real vector 2 element 9
set fmri(con_real2.9) -1.0

# Real contrast_real vector 2 element 10
set fmri(con_real2.10) 0

# Real contrast_real vector 2 element 11
set fmri(con_real2.11) 1.0

# Real contrast_real vector 2 element 12
set fmri(con_real2.12) 0

# Real contrast_real vector 2 element 13
set fmri(con_real2.13) 0

# Real contrast_real vector 2 element 14
set fmri(con_real2.14) 0

# Real contrast_real vector 2 element 15
set fmri(con_real2.15) 0.0

# Real contrast_real vector 2 element 16
set fmri(con_real2.16) 0

# Real contrast_real vector 2 element 17
set fmri(con_real2.17) 0

# Real contrast_real vector 2 element 18
set fmri(con_real2.18) 0

# Real contrast_real vector 2 element 19
set fmri(con_real2.19) 0

# Display images for contrast_real 3
set fmri(conpic_real.3) 0

# Title for contrast_real 3
set fmri(conname_real.3) "MED -"

# Real contrast_real vector 3 element 1
set fmri(con_real3.1) 0

# Real contrast_real vector 3 element 2
set fmri(con_real3.2) 0

# Real contrast_real vector 3 element 3
set fmri(con_real3.3) 0

# Real contrast_real vector 3 element 4
set fmri(con_real3.4) 0

# Real contrast_real vector 3 element 5
set fmri(con_real3.5) 1.0

# Real contrast_real vector 3 element 6
set fmri(con_real3.6) 0

# Real contrast_real vector 3 element 7
set fmri(con_real3.7) -1.0

# Real contrast_real vector 3 element 8
set fmri(con_real3.8) 0

# Real contrast_real vector 3 element 9
set fmri(con_real3.9) 1.0

# Real contrast_real vector 3 element 10
set fmri(con_real3.10) 0

# Real contrast_real vector 3 element 11
set fmri(con_real3.11) -1.0

# Real contrast_real vector 3 element 12
set fmri(con_real3.12) 0

# Real contrast_real vector 3 element 13
set fmri(con_real3.13) 0

# Real contrast_real vector 3 element 14
set fmri(con_real3.14) 0

# Real contrast_real vector 3 element 15
set fmri(con_real3.15) 0

# Real contrast_real vector 3 element 16
set fmri(con_real3.16) 0.0

# Real contrast_real vector 3 element 17
set fmri(con_real3.17) 0

# Real contrast_real vector 3 element 18
set fmri(con_real3.18) 0

# Real contrast_real vector 3 element 19
set fmri(con_real3.19) 0

# Display images for contrast_real 4
set fmri(conpic_real.4) 0

# Title for contrast_real 4
set fmri(conname_real.4) "MEP +"

# Real contrast_real vector 4 element 1
set fmri(con_real4.1) 0

# Real contrast_real vector 4 element 2
set fmri(con_real4.2) 0

# Real contrast_real vector 4 element 3
set fmri(con_real4.3) 0

# Real contrast_real vector 4 element 4
set fmri(con_real4.4) 0

# Real contrast_real vector 4 element 5
set fmri(con_real4.5) 1.0

# Real contrast_real vector 4 element 6
set fmri(con_real4.6) 0

# Real contrast_real vector 4 element 7
set fmri(con_real4.7) 1.0

# Real contrast_real vector 4 element 8
set fmri(con_real4.8) 0

# Real contrast_real vector 4 element 9
set fmri(con_real4.9) -1.0

# Real contrast_real vector 4 element 10
set fmri(con_real4.10) 0

# Real contrast_real vector 4 element 11
set fmri(con_real4.11) -1.0

# Real contrast_real vector 4 element 12
set fmri(con_real4.12) 0

# Real contrast_real vector 4 element 13
set fmri(con_real4.13) 0

# Real contrast_real vector 4 element 14
set fmri(con_real4.14) 0

# Real contrast_real vector 4 element 15
set fmri(con_real4.15) 0

# Real contrast_real vector 4 element 16
set fmri(con_real4.16) 0.0

# Real contrast_real vector 4 element 17
set fmri(con_real4.17) 0

# Real contrast_real vector 4 element 18
set fmri(con_real4.18) 0

# Real contrast_real vector 4 element 19
set fmri(con_real4.19) 0

# Display images for contrast_real 5
set fmri(conpic_real.5) 0

# Title for contrast_real 5
set fmri(conname_real.5) "MEP -"

# Real contrast_real vector 5 element 1
set fmri(con_real5.1) 0

# Real contrast_real vector 5 element 2
set fmri(con_real5.2) 0

# Real contrast_real vector 5 element 3
set fmri(con_real5.3) 0

# Real contrast_real vector 5 element 4
set fmri(con_real5.4) 0

# Real contrast_real vector 5 element 5
set fmri(con_real5.5) -1.0

# Real contrast_real vector 5 element 6
set fmri(con_real5.6) 0

# Real contrast_real vector 5 element 7
set fmri(con_real5.7) -1.0

# Real contrast_real vector 5 element 8
set fmri(con_real5.8) 0

# Real contrast_real vector 5 element 9
set fmri(con_real5.9) 1.0

# Real contrast_real vector 5 element 10
set fmri(con_real5.10) 0

# Real contrast_real vector 5 element 11
set fmri(con_real5.11) 1.0

# Real contrast_real vector 5 element 12
set fmri(con_real5.12) 0

# Real contrast_real vector 5 element 13
set fmri(con_real5.13) 0

# Real contrast_real vector 5 element 14
set fmri(con_real5.14) 0

# Real contrast_real vector 5 element 15
set fmri(con_real5.15) 0

# Real contrast_real vector 5 element 16
set fmri(con_real5.16) 0

# Real contrast_real vector 5 element 17
set fmri(con_real5.17) 0

# Real contrast_real vector 5 element 18
set fmri(con_real5.18) 0

# Real contrast_real vector 5 element 19
set fmri(con_real5.19) 0

# Display images for contrast_real 6
set fmri(conpic_real.6) 0

# Title for contrast_real 6
set fmri(conname_real.6) "INT +"

# Real contrast_real vector 6 element 1
set fmri(con_real6.1) 0

# Real contrast_real vector 6 element 2
set fmri(con_real6.2) 0

# Real contrast_real vector 6 element 3
set fmri(con_real6.3) 0

# Real contrast_real vector 6 element 4
set fmri(con_real6.4) 0

# Real contrast_real vector 6 element 5
set fmri(con_real6.5) -1.0

# Real contrast_real vector 6 element 6
set fmri(con_real6.6) 0

# Real contrast_real vector 6 element 7
set fmri(con_real6.7) 1.0

# Real contrast_real vector 6 element 8
set fmri(con_real6.8) 0

# Real contrast_real vector 6 element 9
set fmri(con_real6.9) 1.0

# Real contrast_real vector 6 element 10
set fmri(con_real6.10) 0

# Real contrast_real vector 6 element 11
set fmri(con_real6.11) -1.0

# Real contrast_real vector 6 element 12
set fmri(con_real6.12) 0

# Real contrast_real vector 6 element 13
set fmri(con_real6.13) 0

# Real contrast_real vector 6 element 14
set fmri(con_real6.14) 0

# Real contrast_real vector 6 element 15
set fmri(con_real6.15) 0

# Real contrast_real vector 6 element 16
set fmri(con_real6.16) 0

# Real contrast_real vector 6 element 17
set fmri(con_real6.17) 0.0

# Real contrast_real vector 6 element 18
set fmri(con_real6.18) 0

# Real contrast_real vector 6 element 19
set fmri(con_real6.19) 0

# Display images for contrast_real 7
set fmri(conpic_real.7) 0

# Title for contrast_real 7
set fmri(conname_real.7) "INT -"

# Real contrast_real vector 7 element 1
set fmri(con_real7.1) 0

# Real contrast_real vector 7 element 2
set fmri(con_real7.2) 0

# Real contrast_real vector 7 element 3
set fmri(con_real7.3) 0

# Real contrast_real vector 7 element 4
set fmri(con_real7.4) 0

# Real contrast_real vector 7 element 5
set fmri(con_real7.5) 1.0

# Real contrast_real vector 7 element 6
set fmri(con_real7.6) 0

# Real contrast_real vector 7 element 7
set fmri(con_real7.7) -1.0

# Real contrast_real vector 7 element 8
set fmri(con_real7.8) 0

# Real contrast_real vector 7 element 9
set fmri(con_real7.9) -1.0

# Real contrast_real vector 7 element 10
set fmri(con_real7.10) 0

# Real contrast_real vector 7 element 11
set fmri(con_real7.11) 1.0

# Real contrast_real vector 7 element 12
set fmri(con_real7.12) 0

# Real contrast_real vector 7 element 13
set fmri(con_real7.13) 0.0

# Real contrast_real vector 7 element 14
set fmri(con_real7.14) 0

# Real contrast_real vector 7 element 15
set fmri(con_real7.15) 0

# Real contrast_real vector 7 element 16
set fmri(con_real7.16) 0

# Real contrast_real vector 7 element 17
set fmri(con_real7.17) 0.0

# Real contrast_real vector 7 element 18
set fmri(con_real7.18) 0

# Real contrast_real vector 7 element 19
set fmri(con_real7.19) 0

# Display images for contrast_real 8
set fmri(conpic_real.8) 1

# Title for contrast_real 8
set fmri(conname_real.8) "PPI_MED +"

# Real contrast_real vector 8 element 1
set fmri(con_real8.1) 0

# Real contrast_real vector 8 element 2
set fmri(con_real8.2) 0

# Real contrast_real vector 8 element 3
set fmri(con_real8.3) 0.0

# Real contrast_real vector 8 element 4
set fmri(con_real8.4) 0

# Real contrast_real vector 8 element 5
set fmri(con_real8.5) 0.0

# Real contrast_real vector 8 element 6
set fmri(con_real8.6) 0

# Real contrast_real vector 8 element 7
set fmri(con_real8.7) 0.0

# Real contrast_real vector 8 element 8
set fmri(con_real8.8) 0

# Real contrast_real vector 8 element 9
set fmri(con_real8.9) 0.0

# Real contrast_real vector 8 element 10
set fmri(con_real8.10) 0

# Real contrast_real vector 8 element 11
set fmri(con_real8.11) 0.0

# Real contrast_real vector 8 element 12
set fmri(con_real8.12) 0

# Real contrast_real vector 8 element 13
set fmri(con_real8.13) 0

# Real contrast_real vector 8 element 14
set fmri(con_real8.14) 0

# Real contrast_real vector 8 element 15
set fmri(con_real8.15) 0

# Real contrast_real vector 8 element 16
set fmri(con_real8.16) -1.0

# Real contrast_real vector 8 element 17
set fmri(con_real8.17) 1.0

# Real contrast_real vector 8 element 18
set fmri(con_real8.18) -1.0

# Real contrast_real vector 8 element 19
set fmri(con_real8.19) 1.0

# Display images for contrast_real 9
set fmri(conpic_real.9) 1

# Title for contrast_real 9
set fmri(conname_real.9) "PPI_MED -"

# Real contrast_real vector 9 element 1
set fmri(con_real9.1) 0

# Real contrast_real vector 9 element 2
set fmri(con_real9.2) 0

# Real contrast_real vector 9 element 3
set fmri(con_real9.3) 0

# Real contrast_real vector 9 element 4
set fmri(con_real9.4) 0

# Real contrast_real vector 9 element 5
set fmri(con_real9.5) 0.0

# Real contrast_real vector 9 element 6
set fmri(con_real9.6) 0

# Real contrast_real vector 9 element 7
set fmri(con_real9.7) 0.0

# Real contrast_real vector 9 element 8
set fmri(con_real9.8) 0

# Real contrast_real vector 9 element 9
set fmri(con_real9.9) 0.0

# Real contrast_real vector 9 element 10
set fmri(con_real9.10) 0

# Real contrast_real vector 9 element 11
set fmri(con_real9.11) 0.0

# Real contrast_real vector 9 element 12
set fmri(con_real9.12) 0

# Real contrast_real vector 9 element 13
set fmri(con_real9.13) 0

# Real contrast_real vector 9 element 14
set fmri(con_real9.14) 0

# Real contrast_real vector 9 element 15
set fmri(con_real9.15) 0

# Real contrast_real vector 9 element 16
set fmri(con_real9.16) 1.0

# Real contrast_real vector 9 element 17
set fmri(con_real9.17) -1.0

# Real contrast_real vector 9 element 18
set fmri(con_real9.18) 1.0

# Real contrast_real vector 9 element 19
set fmri(con_real9.19) -1.0

# Display images for contrast_real 10
set fmri(conpic_real.10) 1

# Title for contrast_real 10
set fmri(conname_real.10) "PPI_MEP +"

# Real contrast_real vector 10 element 1
set fmri(con_real10.1) 0

# Real contrast_real vector 10 element 2
set fmri(con_real10.2) 0

# Real contrast_real vector 10 element 3
set fmri(con_real10.3) 0

# Real contrast_real vector 10 element 4
set fmri(con_real10.4) 0

# Real contrast_real vector 10 element 5
set fmri(con_real10.5) 0

# Real contrast_real vector 10 element 6
set fmri(con_real10.6) 0

# Real contrast_real vector 10 element 7
set fmri(con_real10.7) 0

# Real contrast_real vector 10 element 8
set fmri(con_real10.8) 0

# Real contrast_real vector 10 element 9
set fmri(con_real10.9) 0

# Real contrast_real vector 10 element 10
set fmri(con_real10.10) 0

# Real contrast_real vector 10 element 11
set fmri(con_real10.11) 0

# Real contrast_real vector 10 element 12
set fmri(con_real10.12) 0

# Real contrast_real vector 10 element 13
set fmri(con_real10.13) 0

# Real contrast_real vector 10 element 14
set fmri(con_real10.14) 0

# Real contrast_real vector 10 element 15
set fmri(con_real10.15) 0

# Real contrast_real vector 10 element 16
set fmri(con_real10.16) 1.0

# Real contrast_real vector 10 element 17
set fmri(con_real10.17) 1.0

# Real contrast_real vector 10 element 18
set fmri(con_real10.18) -1.0

# Real contrast_real vector 10 element 19
set fmri(con_real10.19) -1.0

# Display images for contrast_real 11
set fmri(conpic_real.11) 1

# Title for contrast_real 11
set fmri(conname_real.11) "PPI_MEP -"

# Real contrast_real vector 11 element 1
set fmri(con_real11.1) 0

# Real contrast_real vector 11 element 2
set fmri(con_real11.2) 0

# Real contrast_real vector 11 element 3
set fmri(con_real11.3) 0

# Real contrast_real vector 11 element 4
set fmri(con_real11.4) 0

# Real contrast_real vector 11 element 5
set fmri(con_real11.5) 0

# Real contrast_real vector 11 element 6
set fmri(con_real11.6) 0

# Real contrast_real vector 11 element 7
set fmri(con_real11.7) 0

# Real contrast_real vector 11 element 8
set fmri(con_real11.8) 0

# Real contrast_real vector 11 element 9
set fmri(con_real11.9) 0

# Real contrast_real vector 11 element 10
set fmri(con_real11.10) 0

# Real contrast_real vector 11 element 11
set fmri(con_real11.11) 0.0

# Real contrast_real vector 11 element 12
set fmri(con_real11.12) 0

# Real contrast_real vector 11 element 13
set fmri(con_real11.13) 0

# Real contrast_real vector 11 element 14
set fmri(con_real11.14) 0

# Real contrast_real vector 11 element 15
set fmri(con_real11.15) 0

# Real contrast_real vector 11 element 16
set fmri(con_real11.16) -1.0

# Real contrast_real vector 11 element 17
set fmri(con_real11.17) -1.0

# Real contrast_real vector 11 element 18
set fmri(con_real11.18) 1.0

# Real contrast_real vector 11 element 19
set fmri(con_real11.19) 1.0

# Display images for contrast_real 12
set fmri(conpic_real.12) 1

# Title for contrast_real 12
set fmri(conname_real.12) "PPI_INT +"

# Real contrast_real vector 12 element 1
set fmri(con_real12.1) 0

# Real contrast_real vector 12 element 2
set fmri(con_real12.2) 0

# Real contrast_real vector 12 element 3
set fmri(con_real12.3) 0

# Real contrast_real vector 12 element 4
set fmri(con_real12.4) 0

# Real contrast_real vector 12 element 5
set fmri(con_real12.5) 0

# Real contrast_real vector 12 element 6
set fmri(con_real12.6) 0

# Real contrast_real vector 12 element 7
set fmri(con_real12.7) 0

# Real contrast_real vector 12 element 8
set fmri(con_real12.8) 0

# Real contrast_real vector 12 element 9
set fmri(con_real12.9) 0

# Real contrast_real vector 12 element 10
set fmri(con_real12.10) 0

# Real contrast_real vector 12 element 11
set fmri(con_real12.11) 0

# Real contrast_real vector 12 element 12
set fmri(con_real12.12) 0

# Real contrast_real vector 12 element 13
set fmri(con_real12.13) 0

# Real contrast_real vector 12 element 14
set fmri(con_real12.14) 0

# Real contrast_real vector 12 element 15
set fmri(con_real12.15) 0

# Real contrast_real vector 12 element 16
set fmri(con_real12.16) -1.0

# Real contrast_real vector 12 element 17
set fmri(con_real12.17) 1.0

# Real contrast_real vector 12 element 18
set fmri(con_real12.18) 1.0

# Real contrast_real vector 12 element 19
set fmri(con_real12.19) -1.0

# Display images for contrast_real 13
set fmri(conpic_real.13) 1

# Title for contrast_real 13
set fmri(conname_real.13) "PPI_INT -"

# Real contrast_real vector 13 element 1
set fmri(con_real13.1) 0

# Real contrast_real vector 13 element 2
set fmri(con_real13.2) 0

# Real contrast_real vector 13 element 3
set fmri(con_real13.3) 0

# Real contrast_real vector 13 element 4
set fmri(con_real13.4) 0

# Real contrast_real vector 13 element 5
set fmri(con_real13.5) 0

# Real contrast_real vector 13 element 6
set fmri(con_real13.6) 0

# Real contrast_real vector 13 element 7
set fmri(con_real13.7) 0

# Real contrast_real vector 13 element 8
set fmri(con_real13.8) 0

# Real contrast_real vector 13 element 9
set fmri(con_real13.9) 0

# Real contrast_real vector 13 element 10
set fmri(con_real13.10) 0

# Real contrast_real vector 13 element 11
set fmri(con_real13.11) 0

# Real contrast_real vector 13 element 12
set fmri(con_real13.12) 0

# Real contrast_real vector 13 element 13
set fmri(con_real13.13) 0

# Real contrast_real vector 13 element 14
set fmri(con_real13.14) 0

# Real contrast_real vector 13 element 15
set fmri(con_real13.15) 0

# Real contrast_real vector 13 element 16
set fmri(con_real13.16) 1.0

# Real contrast_real vector 13 element 17
set fmri(con_real13.17) -1.0

# Real contrast_real vector 13 element 18
set fmri(con_real13.18) -1.0

# Real contrast_real vector 13 element 19
set fmri(con_real13.19) 1.0

# Display images for contrast_real 14
set fmri(conpic_real.14) 1

# Title for contrast_real 14
set fmri(conname_real.14) "EH - HH"

# Real contrast_real vector 14 element 1
set fmri(con_real14.1) 0

# Real contrast_real vector 14 element 2
set fmri(con_real14.2) 0

# Real contrast_real vector 14 element 3
set fmri(con_real14.3) 0

# Real contrast_real vector 14 element 4
set fmri(con_real14.4) 0

# Real contrast_real vector 14 element 5
set fmri(con_real14.5) 0.0

# Real contrast_real vector 14 element 6
set fmri(con_real14.6) 0

# Real contrast_real vector 14 element 7
set fmri(con_real14.7) 0.0

# Real contrast_real vector 14 element 8
set fmri(con_real14.8) 0

# Real contrast_real vector 14 element 9
set fmri(con_real14.9) 0

# Real contrast_real vector 14 element 10
set fmri(con_real14.10) 0

# Real contrast_real vector 14 element 11
set fmri(con_real14.11) 0

# Real contrast_real vector 14 element 12
set fmri(con_real14.12) 0

# Real contrast_real vector 14 element 13
set fmri(con_real14.13) 0

# Real contrast_real vector 14 element 14
set fmri(con_real14.14) 0

# Real contrast_real vector 14 element 15
set fmri(con_real14.15) 0

# Real contrast_real vector 14 element 16
set fmri(con_real14.16) 1.0

# Real contrast_real vector 14 element 17
set fmri(con_real14.17) -1.0

# Real contrast_real vector 14 element 18
set fmri(con_real14.18) 0

# Real contrast_real vector 14 element 19
set fmri(con_real14.19) 0

# Display images for contrast_real 15
set fmri(conpic_real.15) 1

# Title for contrast_real 15
set fmri(conname_real.15) "HH - EH"

# Real contrast_real vector 15 element 1
set fmri(con_real15.1) 0

# Real contrast_real vector 15 element 2
set fmri(con_real15.2) 0

# Real contrast_real vector 15 element 3
set fmri(con_real15.3) 0

# Real contrast_real vector 15 element 4
set fmri(con_real15.4) 0

# Real contrast_real vector 15 element 5
set fmri(con_real15.5) 0.0

# Real contrast_real vector 15 element 6
set fmri(con_real15.6) 0

# Real contrast_real vector 15 element 7
set fmri(con_real15.7) 0.0

# Real contrast_real vector 15 element 8
set fmri(con_real15.8) 0

# Real contrast_real vector 15 element 9
set fmri(con_real15.9) 0

# Real contrast_real vector 15 element 10
set fmri(con_real15.10) 0

# Real contrast_real vector 15 element 11
set fmri(con_real15.11) 0

# Real contrast_real vector 15 element 12
set fmri(con_real15.12) 0

# Real contrast_real vector 15 element 13
set fmri(con_real15.13) 0

# Real contrast_real vector 15 element 14
set fmri(con_real15.14) 0

# Real contrast_real vector 15 element 15
set fmri(con_real15.15) 0

# Real contrast_real vector 15 element 16
set fmri(con_real15.16) -1.0

# Real contrast_real vector 15 element 17
set fmri(con_real15.17) 1.0

# Real contrast_real vector 15 element 18
set fmri(con_real15.18) 0

# Real contrast_real vector 15 element 19
set fmri(con_real15.19) 0

# Display images for contrast_real 16
set fmri(conpic_real.16) 1

# Title for contrast_real 16
set fmri(conname_real.16) "PPI_EH"

# Real contrast_real vector 16 element 1
set fmri(con_real16.1) 0

# Real contrast_real vector 16 element 2
set fmri(con_real16.2) 0

# Real contrast_real vector 16 element 3
set fmri(con_real16.3) 0

# Real contrast_real vector 16 element 4
set fmri(con_real16.4) 0

# Real contrast_real vector 16 element 5
set fmri(con_real16.5) 0

# Real contrast_real vector 16 element 6
set fmri(con_real16.6) 0

# Real contrast_real vector 16 element 7
set fmri(con_real16.7) 0

# Real contrast_real vector 16 element 8
set fmri(con_real16.8) 0

# Real contrast_real vector 16 element 9
set fmri(con_real16.9) 0

# Real contrast_real vector 16 element 10
set fmri(con_real16.10) 0

# Real contrast_real vector 16 element 11
set fmri(con_real16.11) 0

# Real contrast_real vector 16 element 12
set fmri(con_real16.12) 0

# Real contrast_real vector 16 element 13
set fmri(con_real16.13) 0

# Real contrast_real vector 16 element 14
set fmri(con_real16.14) 0

# Real contrast_real vector 16 element 15
set fmri(con_real16.15) 0

# Real contrast_real vector 16 element 16
set fmri(con_real16.16) 1.0

# Real contrast_real vector 16 element 17
set fmri(con_real16.17) 0

# Real contrast_real vector 16 element 18
set fmri(con_real16.18) 0

# Real contrast_real vector 16 element 19
set fmri(con_real16.19) 0

# Display images for contrast_real 17
set fmri(conpic_real.17) 1

# Title for contrast_real 17
set fmri(conname_real.17) "PPI_HH"

# Real contrast_real vector 17 element 1
set fmri(con_real17.1) 0

# Real contrast_real vector 17 element 2
set fmri(con_real17.2) 0

# Real contrast_real vector 17 element 3
set fmri(con_real17.3) 0

# Real contrast_real vector 17 element 4
set fmri(con_real17.4) 0

# Real contrast_real vector 17 element 5
set fmri(con_real17.5) 0

# Real contrast_real vector 17 element 6
set fmri(con_real17.6) 0

# Real contrast_real vector 17 element 7
set fmri(con_real17.7) 0

# Real contrast_real vector 17 element 8
set fmri(con_real17.8) 0

# Real contrast_real vector 17 element 9
set fmri(con_real17.9) 0

# Real contrast_real vector 17 element 10
set fmri(con_real17.10) 0

# Real contrast_real vector 17 element 11
set fmri(con_real17.11) 0

# Real contrast_real vector 17 element 12
set fmri(con_real17.12) 0

# Real contrast_real vector 17 element 13
set fmri(con_real17.13) 0

# Real contrast_real vector 17 element 14
set fmri(con_real17.14) 0

# Real contrast_real vector 17 element 15
set fmri(con_real17.15) 0

# Real contrast_real vector 17 element 16
set fmri(con_real17.16) 0

# Real contrast_real vector 17 element 17
set fmri(con_real17.17) 1.0

# Real contrast_real vector 17 element 18
set fmri(con_real17.18) 0

# Real contrast_real vector 17 element 19
set fmri(con_real17.19) 0

# Display images for contrast_real 18
set fmri(conpic_real.18) 1

# Title for contrast_real 18
set fmri(conname_real.18) "PPI_EL"

# Real contrast_real vector 18 element 1
set fmri(con_real18.1) 0

# Real contrast_real vector 18 element 2
set fmri(con_real18.2) 0

# Real contrast_real vector 18 element 3
set fmri(con_real18.3) 0

# Real contrast_real vector 18 element 4
set fmri(con_real18.4) 0

# Real contrast_real vector 18 element 5
set fmri(con_real18.5) 0

# Real contrast_real vector 18 element 6
set fmri(con_real18.6) 0

# Real contrast_real vector 18 element 7
set fmri(con_real18.7) 0

# Real contrast_real vector 18 element 8
set fmri(con_real18.8) 0

# Real contrast_real vector 18 element 9
set fmri(con_real18.9) 0

# Real contrast_real vector 18 element 10
set fmri(con_real18.10) 0

# Real contrast_real vector 18 element 11
set fmri(con_real18.11) 0

# Real contrast_real vector 18 element 12
set fmri(con_real18.12) 0

# Real contrast_real vector 18 element 13
set fmri(con_real18.13) 0

# Real contrast_real vector 18 element 14
set fmri(con_real18.14) 0

# Real contrast_real vector 18 element 15
set fmri(con_real18.15) 0

# Real contrast_real vector 18 element 16
set fmri(con_real18.16) 0

# Real contrast_real vector 18 element 17
set fmri(con_real18.17) 0

# Real contrast_real vector 18 element 18
set fmri(con_real18.18) 1.0

# Real contrast_real vector 18 element 19
set fmri(con_real18.19) 0.0

# Display images for contrast_real 19
set fmri(conpic_real.19) 1

# Title for contrast_real 19
set fmri(conname_real.19) "PPI_HL"

# Real contrast_real vector 19 element 1
set fmri(con_real19.1) 0

# Real contrast_real vector 19 element 2
set fmri(con_real19.2) 0

# Real contrast_real vector 19 element 3
set fmri(con_real19.3) 0

# Real contrast_real vector 19 element 4
set fmri(con_real19.4) 0

# Real contrast_real vector 19 element 5
set fmri(con_real19.5) 0

# Real contrast_real vector 19 element 6
set fmri(con_real19.6) 0

# Real contrast_real vector 19 element 7
set fmri(con_real19.7) 0

# Real contrast_real vector 19 element 8
set fmri(con_real19.8) 0

# Real contrast_real vector 19 element 9
set fmri(con_real19.9) 0

# Real contrast_real vector 19 element 10
set fmri(con_real19.10) 0

# Real contrast_real vector 19 element 11
set fmri(con_real19.11) 0

# Real contrast_real vector 19 element 12
set fmri(con_real19.12) 0

# Real contrast_real vector 19 element 13
set fmri(con_real19.13) 0

# Real contrast_real vector 19 element 14
set fmri(con_real19.14) 0

# Real contrast_real vector 19 element 15
set fmri(con_real19.15) 0

# Real contrast_real vector 19 element 16
set fmri(con_real19.16) 0

# Real contrast_real vector 19 element 17
set fmri(con_real19.17) 0

# Real contrast_real vector 19 element 18
set fmri(con_real19.18) 0

# Real contrast_real vector 19 element 19
set fmri(con_real19.19) 1.0

# Display images for contrast_real 20
set fmri(conpic_real.20) 0

# Title for contrast_real 20
set fmri(conname_real.20) "PPI_HH_HL"

# Real contrast_real vector 20 element 1
set fmri(con_real20.1) 0

# Real contrast_real vector 20 element 2
set fmri(con_real20.2) 0

# Real contrast_real vector 20 element 3
set fmri(con_real20.3) 0

# Real contrast_real vector 20 element 4
set fmri(con_real20.4) 0

# Real contrast_real vector 20 element 5
set fmri(con_real20.5) 0

# Real contrast_real vector 20 element 6
set fmri(con_real20.6) 0

# Real contrast_real vector 20 element 7
set fmri(con_real20.7) 0

# Real contrast_real vector 20 element 8
set fmri(con_real20.8) 0

# Real contrast_real vector 20 element 9
set fmri(con_real20.9) 0

# Real contrast_real vector 20 element 10
set fmri(con_real20.10) 0

# Real contrast_real vector 20 element 11
set fmri(con_real20.11) 0

# Real contrast_real vector 20 element 12
set fmri(con_real20.12) 0

# Real contrast_real vector 20 element 13
set fmri(con_real20.13) 0

# Real contrast_real vector 20 element 14
set fmri(con_real20.14) 0

# Real contrast_real vector 20 element 15
set fmri(con_real20.15) 0

# Real contrast_real vector 20 element 16
set fmri(con_real20.16) 1.0

# Real contrast_real vector 20 element 17
set fmri(con_real20.17) 1.0

# Real contrast_real vector 20 element 18
set fmri(con_real20.18) 0

# Real contrast_real vector 20 element 19
set fmri(con_real20.19) 0.0

# Display images for contrast_orig 1
set fmri(conpic_orig.1) 0

# Title for contrast_orig 1
set fmri(conname_orig.1) "PHYS"

# Real contrast_orig vector 1 element 1
set fmri(con_orig1.1) 0.0

# Real contrast_orig vector 1 element 2
set fmri(con_orig1.2) 0

# Real contrast_orig vector 1 element 3
set fmri(con_orig1.3) 0.0

# Real contrast_orig vector 1 element 4
set fmri(con_orig1.4) 0

# Real contrast_orig vector 1 element 5
set fmri(con_orig1.5) 0

# Real contrast_orig vector 1 element 6
set fmri(con_orig1.6) 0

# Real contrast_orig vector 1 element 7
set fmri(con_orig1.7) 0

# Real contrast_orig vector 1 element 8
set fmri(con_orig1.8) 1.0

# Real contrast_orig vector 1 element 9
set fmri(con_orig1.9) 0

# Real contrast_orig vector 1 element 10
set fmri(con_orig1.10) 0

# Real contrast_orig vector 1 element 11
set fmri(con_orig1.11) 0

# Real contrast_orig vector 1 element 12
set fmri(con_orig1.12) 0

# Display images for contrast_orig 2
set fmri(conpic_orig.2) 0

# Title for contrast_orig 2
set fmri(conname_orig.2) "MED +"

# Real contrast_orig vector 2 element 1
set fmri(con_orig2.1) 0

# Real contrast_orig vector 2 element 2
set fmri(con_orig2.2) 0.0

# Real contrast_orig vector 2 element 3
set fmri(con_orig2.3) -1.0

# Real contrast_orig vector 2 element 4
set fmri(con_orig2.4) 1.0

# Real contrast_orig vector 2 element 5
set fmri(con_orig2.5) -1.0

# Real contrast_orig vector 2 element 6
set fmri(con_orig2.6) 1.0

# Real contrast_orig vector 2 element 7
set fmri(con_orig2.7) 0

# Real contrast_orig vector 2 element 8
set fmri(con_orig2.8) 0.0

# Real contrast_orig vector 2 element 9
set fmri(con_orig2.9) 0

# Real contrast_orig vector 2 element 10
set fmri(con_orig2.10) 0

# Real contrast_orig vector 2 element 11
set fmri(con_orig2.11) 0

# Real contrast_orig vector 2 element 12
set fmri(con_orig2.12) 0

# Display images for contrast_orig 3
set fmri(conpic_orig.3) 0

# Title for contrast_orig 3
set fmri(conname_orig.3) "MED -"

# Real contrast_orig vector 3 element 1
set fmri(con_orig3.1) 0

# Real contrast_orig vector 3 element 2
set fmri(con_orig3.2) 0

# Real contrast_orig vector 3 element 3
set fmri(con_orig3.3) 1.0

# Real contrast_orig vector 3 element 4
set fmri(con_orig3.4) -1.0

# Real contrast_orig vector 3 element 5
set fmri(con_orig3.5) 1.0

# Real contrast_orig vector 3 element 6
set fmri(con_orig3.6) -1.0

# Real contrast_orig vector 3 element 7
set fmri(con_orig3.7) 0

# Real contrast_orig vector 3 element 8
set fmri(con_orig3.8) 0

# Real contrast_orig vector 3 element 9
set fmri(con_orig3.9) 0.0

# Real contrast_orig vector 3 element 10
set fmri(con_orig3.10) 0

# Real contrast_orig vector 3 element 11
set fmri(con_orig3.11) 0

# Real contrast_orig vector 3 element 12
set fmri(con_orig3.12) 0

# Display images for contrast_orig 4
set fmri(conpic_orig.4) 0

# Title for contrast_orig 4
set fmri(conname_orig.4) "MEP +"

# Real contrast_orig vector 4 element 1
set fmri(con_orig4.1) 0

# Real contrast_orig vector 4 element 2
set fmri(con_orig4.2) 0

# Real contrast_orig vector 4 element 3
set fmri(con_orig4.3) 1.0

# Real contrast_orig vector 4 element 4
set fmri(con_orig4.4) 1.0

# Real contrast_orig vector 4 element 5
set fmri(con_orig4.5) -1.0

# Real contrast_orig vector 4 element 6
set fmri(con_orig4.6) -1.0

# Real contrast_orig vector 4 element 7
set fmri(con_orig4.7) 0

# Real contrast_orig vector 4 element 8
set fmri(con_orig4.8) 0

# Real contrast_orig vector 4 element 9
set fmri(con_orig4.9) 0.0

# Real contrast_orig vector 4 element 10
set fmri(con_orig4.10) 0

# Real contrast_orig vector 4 element 11
set fmri(con_orig4.11) 0

# Real contrast_orig vector 4 element 12
set fmri(con_orig4.12) 0

# Display images for contrast_orig 5
set fmri(conpic_orig.5) 0

# Title for contrast_orig 5
set fmri(conname_orig.5) "MEP -"

# Real contrast_orig vector 5 element 1
set fmri(con_orig5.1) 0

# Real contrast_orig vector 5 element 2
set fmri(con_orig5.2) 0

# Real contrast_orig vector 5 element 3
set fmri(con_orig5.3) -1.0

# Real contrast_orig vector 5 element 4
set fmri(con_orig5.4) -1.0

# Real contrast_orig vector 5 element 5
set fmri(con_orig5.5) 1.0

# Real contrast_orig vector 5 element 6
set fmri(con_orig5.6) 1.0

# Real contrast_orig vector 5 element 7
set fmri(con_orig5.7) 0

# Real contrast_orig vector 5 element 8
set fmri(con_orig5.8) 0

# Real contrast_orig vector 5 element 9
set fmri(con_orig5.9) 0

# Real contrast_orig vector 5 element 10
set fmri(con_orig5.10) 0

# Real contrast_orig vector 5 element 11
set fmri(con_orig5.11) 0

# Real contrast_orig vector 5 element 12
set fmri(con_orig5.12) 0

# Display images for contrast_orig 6
set fmri(conpic_orig.6) 0

# Title for contrast_orig 6
set fmri(conname_orig.6) "INT +"

# Real contrast_orig vector 6 element 1
set fmri(con_orig6.1) 0

# Real contrast_orig vector 6 element 2
set fmri(con_orig6.2) 0

# Real contrast_orig vector 6 element 3
set fmri(con_orig6.3) -1.0

# Real contrast_orig vector 6 element 4
set fmri(con_orig6.4) 1.0

# Real contrast_orig vector 6 element 5
set fmri(con_orig6.5) 1.0

# Real contrast_orig vector 6 element 6
set fmri(con_orig6.6) -1.0

# Real contrast_orig vector 6 element 7
set fmri(con_orig6.7) 0

# Real contrast_orig vector 6 element 8
set fmri(con_orig6.8) 0

# Real contrast_orig vector 6 element 9
set fmri(con_orig6.9) 0

# Real contrast_orig vector 6 element 10
set fmri(con_orig6.10) 0.0

# Real contrast_orig vector 6 element 11
set fmri(con_orig6.11) 0

# Real contrast_orig vector 6 element 12
set fmri(con_orig6.12) 0

# Display images for contrast_orig 7
set fmri(conpic_orig.7) 0

# Title for contrast_orig 7
set fmri(conname_orig.7) "INT -"

# Real contrast_orig vector 7 element 1
set fmri(con_orig7.1) 0

# Real contrast_orig vector 7 element 2
set fmri(con_orig7.2) 0

# Real contrast_orig vector 7 element 3
set fmri(con_orig7.3) 1.0

# Real contrast_orig vector 7 element 4
set fmri(con_orig7.4) -1.0

# Real contrast_orig vector 7 element 5
set fmri(con_orig7.5) -1.0

# Real contrast_orig vector 7 element 6
set fmri(con_orig7.6) 1.0

# Real contrast_orig vector 7 element 7
set fmri(con_orig7.7) 0.0

# Real contrast_orig vector 7 element 8
set fmri(con_orig7.8) 0

# Real contrast_orig vector 7 element 9
set fmri(con_orig7.9) 0

# Real contrast_orig vector 7 element 10
set fmri(con_orig7.10) 0.0

# Real contrast_orig vector 7 element 11
set fmri(con_orig7.11) 0

# Real contrast_orig vector 7 element 12
set fmri(con_orig7.12) 0

# Display images for contrast_orig 8
set fmri(conpic_orig.8) 1

# Title for contrast_orig 8
set fmri(conname_orig.8) "PPI_MED +"

# Real contrast_orig vector 8 element 1
set fmri(con_orig8.1) 0

# Real contrast_orig vector 8 element 2
set fmri(con_orig8.2) 0.0

# Real contrast_orig vector 8 element 3
set fmri(con_orig8.3) 0.0

# Real contrast_orig vector 8 element 4
set fmri(con_orig8.4) 0.0

# Real contrast_orig vector 8 element 5
set fmri(con_orig8.5) 0.0

# Real contrast_orig vector 8 element 6
set fmri(con_orig8.6) 0.0

# Real contrast_orig vector 8 element 7
set fmri(con_orig8.7) 0

# Real contrast_orig vector 8 element 8
set fmri(con_orig8.8) 0

# Real contrast_orig vector 8 element 9
set fmri(con_orig8.9) -1.0

# Real contrast_orig vector 8 element 10
set fmri(con_orig8.10) 1.0

# Real contrast_orig vector 8 element 11
set fmri(con_orig8.11) -1.0

# Real contrast_orig vector 8 element 12
set fmri(con_orig8.12) 1.0

# Display images for contrast_orig 9
set fmri(conpic_orig.9) 1

# Title for contrast_orig 9
set fmri(conname_orig.9) "PPI_MED -"

# Real contrast_orig vector 9 element 1
set fmri(con_orig9.1) 0

# Real contrast_orig vector 9 element 2
set fmri(con_orig9.2) 0

# Real contrast_orig vector 9 element 3
set fmri(con_orig9.3) 0.0

# Real contrast_orig vector 9 element 4
set fmri(con_orig9.4) 0.0

# Real contrast_orig vector 9 element 5
set fmri(con_orig9.5) 0.0

# Real contrast_orig vector 9 element 6
set fmri(con_orig9.6) 0.0

# Real contrast_orig vector 9 element 7
set fmri(con_orig9.7) 0

# Real contrast_orig vector 9 element 8
set fmri(con_orig9.8) 0

# Real contrast_orig vector 9 element 9
set fmri(con_orig9.9) 1.0

# Real contrast_orig vector 9 element 10
set fmri(con_orig9.10) -1.0

# Real contrast_orig vector 9 element 11
set fmri(con_orig9.11) 1.0

# Real contrast_orig vector 9 element 12
set fmri(con_orig9.12) -1.0

# Display images for contrast_orig 10
set fmri(conpic_orig.10) 1

# Title for contrast_orig 10
set fmri(conname_orig.10) "PPI_MEP +"

# Real contrast_orig vector 10 element 1
set fmri(con_orig10.1) 0

# Real contrast_orig vector 10 element 2
set fmri(con_orig10.2) 0

# Real contrast_orig vector 10 element 3
set fmri(con_orig10.3) 0

# Real contrast_orig vector 10 element 4
set fmri(con_orig10.4) 0

# Real contrast_orig vector 10 element 5
set fmri(con_orig10.5) 0

# Real contrast_orig vector 10 element 6
set fmri(con_orig10.6) 0

# Real contrast_orig vector 10 element 7
set fmri(con_orig10.7) 0

# Real contrast_orig vector 10 element 8
set fmri(con_orig10.8) 0

# Real contrast_orig vector 10 element 9
set fmri(con_orig10.9) 1.0

# Real contrast_orig vector 10 element 10
set fmri(con_orig10.10) 1.0

# Real contrast_orig vector 10 element 11
set fmri(con_orig10.11) -1.0

# Real contrast_orig vector 10 element 12
set fmri(con_orig10.12) -1.0

# Display images for contrast_orig 11
set fmri(conpic_orig.11) 1

# Title for contrast_orig 11
set fmri(conname_orig.11) "PPI_MEP -"

# Real contrast_orig vector 11 element 1
set fmri(con_orig11.1) 0

# Real contrast_orig vector 11 element 2
set fmri(con_orig11.2) 0

# Real contrast_orig vector 11 element 3
set fmri(con_orig11.3) 0

# Real contrast_orig vector 11 element 4
set fmri(con_orig11.4) 0

# Real contrast_orig vector 11 element 5
set fmri(con_orig11.5) 0

# Real contrast_orig vector 11 element 6
set fmri(con_orig11.6) 0.0

# Real contrast_orig vector 11 element 7
set fmri(con_orig11.7) 0

# Real contrast_orig vector 11 element 8
set fmri(con_orig11.8) 0

# Real contrast_orig vector 11 element 9
set fmri(con_orig11.9) -1.0

# Real contrast_orig vector 11 element 10
set fmri(con_orig11.10) -1.0

# Real contrast_orig vector 11 element 11
set fmri(con_orig11.11) 1.0

# Real contrast_orig vector 11 element 12
set fmri(con_orig11.12) 1.0

# Display images for contrast_orig 12
set fmri(conpic_orig.12) 1

# Title for contrast_orig 12
set fmri(conname_orig.12) "PPI_INT +"

# Real contrast_orig vector 12 element 1
set fmri(con_orig12.1) 0

# Real contrast_orig vector 12 element 2
set fmri(con_orig12.2) 0

# Real contrast_orig vector 12 element 3
set fmri(con_orig12.3) 0

# Real contrast_orig vector 12 element 4
set fmri(con_orig12.4) 0

# Real contrast_orig vector 12 element 5
set fmri(con_orig12.5) 0

# Real contrast_orig vector 12 element 6
set fmri(con_orig12.6) 0

# Real contrast_orig vector 12 element 7
set fmri(con_orig12.7) 0

# Real contrast_orig vector 12 element 8
set fmri(con_orig12.8) 0

# Real contrast_orig vector 12 element 9
set fmri(con_orig12.9) -1.0

# Real contrast_orig vector 12 element 10
set fmri(con_orig12.10) 1.0

# Real contrast_orig vector 12 element 11
set fmri(con_orig12.11) 1.0

# Real contrast_orig vector 12 element 12
set fmri(con_orig12.12) -1.0

# Display images for contrast_orig 13
set fmri(conpic_orig.13) 1

# Title for contrast_orig 13
set fmri(conname_orig.13) "PPI_INT -"

# Real contrast_orig vector 13 element 1
set fmri(con_orig13.1) 0

# Real contrast_orig vector 13 element 2
set fmri(con_orig13.2) 0

# Real contrast_orig vector 13 element 3
set fmri(con_orig13.3) 0

# Real contrast_orig vector 13 element 4
set fmri(con_orig13.4) 0

# Real contrast_orig vector 13 element 5
set fmri(con_orig13.5) 0

# Real contrast_orig vector 13 element 6
set fmri(con_orig13.6) 0

# Real contrast_orig vector 13 element 7
set fmri(con_orig13.7) 0

# Real contrast_orig vector 13 element 8
set fmri(con_orig13.8) 0

# Real contrast_orig vector 13 element 9
set fmri(con_orig13.9) 1.0

# Real contrast_orig vector 13 element 10
set fmri(con_orig13.10) -1.0

# Real contrast_orig vector 13 element 11
set fmri(con_orig13.11) -1.0

# Real contrast_orig vector 13 element 12
set fmri(con_orig13.12) 1.0

# Display images for contrast_orig 14
set fmri(conpic_orig.14) 1

# Title for contrast_orig 14
set fmri(conname_orig.14) "EH - HH"

# Real contrast_orig vector 14 element 1
set fmri(con_orig14.1) 0

# Real contrast_orig vector 14 element 2
set fmri(con_orig14.2) 0

# Real contrast_orig vector 14 element 3
set fmri(con_orig14.3) 0.0

# Real contrast_orig vector 14 element 4
set fmri(con_orig14.4) 0.0

# Real contrast_orig vector 14 element 5
set fmri(con_orig14.5) 0

# Real contrast_orig vector 14 element 6
set fmri(con_orig14.6) 0

# Real contrast_orig vector 14 element 7
set fmri(con_orig14.7) 0

# Real contrast_orig vector 14 element 8
set fmri(con_orig14.8) 0

# Real contrast_orig vector 14 element 9
set fmri(con_orig14.9) 1.0

# Real contrast_orig vector 14 element 10
set fmri(con_orig14.10) -1.0

# Real contrast_orig vector 14 element 11
set fmri(con_orig14.11) 0

# Real contrast_orig vector 14 element 12
set fmri(con_orig14.12) 0

# Display images for contrast_orig 15
set fmri(conpic_orig.15) 1

# Title for contrast_orig 15
set fmri(conname_orig.15) "HH - EH"

# Real contrast_orig vector 15 element 1
set fmri(con_orig15.1) 0

# Real contrast_orig vector 15 element 2
set fmri(con_orig15.2) 0

# Real contrast_orig vector 15 element 3
set fmri(con_orig15.3) 0.0

# Real contrast_orig vector 15 element 4
set fmri(con_orig15.4) 0.0

# Real contrast_orig vector 15 element 5
set fmri(con_orig15.5) 0

# Real contrast_orig vector 15 element 6
set fmri(con_orig15.6) 0

# Real contrast_orig vector 15 element 7
set fmri(con_orig15.7) 0

# Real contrast_orig vector 15 element 8
set fmri(con_orig15.8) 0

# Real contrast_orig vector 15 element 9
set fmri(con_orig15.9) -1.0

# Real contrast_orig vector 15 element 10
set fmri(con_orig15.10) 1.0

# Real contrast_orig vector 15 element 11
set fmri(con_orig15.11) 0

# Real contrast_orig vector 15 element 12
set fmri(con_orig15.12) 0

# Display images for contrast_orig 16
set fmri(conpic_orig.16) 1

# Title for contrast_orig 16
set fmri(conname_orig.16) "PPI_EH"

# Real contrast_orig vector 16 element 1
set fmri(con_orig16.1) 0

# Real contrast_orig vector 16 element 2
set fmri(con_orig16.2) 0

# Real contrast_orig vector 16 element 3
set fmri(con_orig16.3) 0

# Real contrast_orig vector 16 element 4
set fmri(con_orig16.4) 0

# Real contrast_orig vector 16 element 5
set fmri(con_orig16.5) 0

# Real contrast_orig vector 16 element 6
set fmri(con_orig16.6) 0

# Real contrast_orig vector 16 element 7
set fmri(con_orig16.7) 0

# Real contrast_orig vector 16 element 8
set fmri(con_orig16.8) 0

# Real contrast_orig vector 16 element 9
set fmri(con_orig16.9) 1.0

# Real contrast_orig vector 16 element 10
set fmri(con_orig16.10) 0

# Real contrast_orig vector 16 element 11
set fmri(con_orig16.11) 0

# Real contrast_orig vector 16 element 12
set fmri(con_orig16.12) 0

# Display images for contrast_orig 17
set fmri(conpic_orig.17) 1

# Title for contrast_orig 17
set fmri(conname_orig.17) "PPI_HH"

# Real contrast_orig vector 17 element 1
set fmri(con_orig17.1) 0

# Real contrast_orig vector 17 element 2
set fmri(con_orig17.2) 0

# Real contrast_orig vector 17 element 3
set fmri(con_orig17.3) 0

# Real contrast_orig vector 17 element 4
set fmri(con_orig17.4) 0

# Real contrast_orig vector 17 element 5
set fmri(con_orig17.5) 0

# Real contrast_orig vector 17 element 6
set fmri(con_orig17.6) 0

# Real contrast_orig vector 17 element 7
set fmri(con_orig17.7) 0

# Real contrast_orig vector 17 element 8
set fmri(con_orig17.8) 0

# Real contrast_orig vector 17 element 9
set fmri(con_orig17.9) 0

# Real contrast_orig vector 17 element 10
set fmri(con_orig17.10) 1.0

# Real contrast_orig vector 17 element 11
set fmri(con_orig17.11) 0

# Real contrast_orig vector 17 element 12
set fmri(con_orig17.12) 0

# Display images for contrast_orig 18
set fmri(conpic_orig.18) 1

# Title for contrast_orig 18
set fmri(conname_orig.18) "PPI_EL"

# Real contrast_orig vector 18 element 1
set fmri(con_orig18.1) 0

# Real contrast_orig vector 18 element 2
set fmri(con_orig18.2) 0

# Real contrast_orig vector 18 element 3
set fmri(con_orig18.3) 0

# Real contrast_orig vector 18 element 4
set fmri(con_orig18.4) 0

# Real contrast_orig vector 18 element 5
set fmri(con_orig18.5) 0

# Real contrast_orig vector 18 element 6
set fmri(con_orig18.6) 0

# Real contrast_orig vector 18 element 7
set fmri(con_orig18.7) 0

# Real contrast_orig vector 18 element 8
set fmri(con_orig18.8) 0

# Real contrast_orig vector 18 element 9
set fmri(con_orig18.9) 0

# Real contrast_orig vector 18 element 10
set fmri(con_orig18.10) 0

# Real contrast_orig vector 18 element 11
set fmri(con_orig18.11) 1.0

# Real contrast_orig vector 18 element 12
set fmri(con_orig18.12) 0.0

# Display images for contrast_orig 19
set fmri(conpic_orig.19) 1

# Title for contrast_orig 19
set fmri(conname_orig.19) "PPI_HL"

# Real contrast_orig vector 19 element 1
set fmri(con_orig19.1) 0

# Real contrast_orig vector 19 element 2
set fmri(con_orig19.2) 0

# Real contrast_orig vector 19 element 3
set fmri(con_orig19.3) 0

# Real contrast_orig vector 19 element 4
set fmri(con_orig19.4) 0

# Real contrast_orig vector 19 element 5
set fmri(con_orig19.5) 0

# Real contrast_orig vector 19 element 6
set fmri(con_orig19.6) 0

# Real contrast_orig vector 19 element 7
set fmri(con_orig19.7) 0

# Real contrast_orig vector 19 element 8
set fmri(con_orig19.8) 0

# Real contrast_orig vector 19 element 9
set fmri(con_orig19.9) 0

# Real contrast_orig vector 19 element 10
set fmri(con_orig19.10) 0

# Real contrast_orig vector 19 element 11
set fmri(con_orig19.11) 0

# Real contrast_orig vector 19 element 12
set fmri(con_orig19.12) 1.0

# Display images for contrast_orig 20
set fmri(conpic_orig.20) 0

# Title for contrast_orig 20
set fmri(conname_orig.20) "PPI_HH_HL"

# Real contrast_orig vector 20 element 1
set fmri(con_orig20.1) 0

# Real contrast_orig vector 20 element 2
set fmri(con_orig20.2) 0

# Real contrast_orig vector 20 element 3
set fmri(con_orig20.3) 0

# Real contrast_orig vector 20 element 4
set fmri(con_orig20.4) 0

# Real contrast_orig vector 20 element 5
set fmri(con_orig20.5) 0

# Real contrast_orig vector 20 element 6
set fmri(con_orig20.6) 0

# Real contrast_orig vector 20 element 7
set fmri(con_orig20.7) 0

# Real contrast_orig vector 20 element 8
set fmri(con_orig20.8) 0

# Real contrast_orig vector 20 element 9
set fmri(con_orig20.9) 1.0

# Real contrast_orig vector 20 element 10
set fmri(con_orig20.10) 1.0

# Real contrast_orig vector 20 element 11
set fmri(con_orig20.11) 0

# Real contrast_orig vector 20 element 12
set fmri(con_orig20.12) 0.0

# Contrast masking - use >0 instead of thresholding?
set fmri(conmask_zerothresh_yn) 0

# Mask real contrast/F-test 1 with real contrast/F-test 2?
set fmri(conmask1_2) 0

# Mask real contrast/F-test 1 with real contrast/F-test 3?
set fmri(conmask1_3) 0

# Mask real contrast/F-test 1 with real contrast/F-test 4?
set fmri(conmask1_4) 0

# Mask real contrast/F-test 1 with real contrast/F-test 5?
set fmri(conmask1_5) 0

# Mask real contrast/F-test 1 with real contrast/F-test 6?
set fmri(conmask1_6) 0

# Mask real contrast/F-test 1 with real contrast/F-test 7?
set fmri(conmask1_7) 0

# Mask real contrast/F-test 1 with real contrast/F-test 8?
set fmri(conmask1_8) 0

# Mask real contrast/F-test 1 with real contrast/F-test 9?
set fmri(conmask1_9) 0

# Mask real contrast/F-test 1 with real contrast/F-test 10?
set fmri(conmask1_10) 0

# Mask real contrast/F-test 1 with real contrast/F-test 11?
set fmri(conmask1_11) 0

# Mask real contrast/F-test 1 with real contrast/F-test 12?
set fmri(conmask1_12) 0

# Mask real contrast/F-test 1 with real contrast/F-test 13?
set fmri(conmask1_13) 0

# Mask real contrast/F-test 1 with real contrast/F-test 14?
set fmri(conmask1_14) 0

# Mask real contrast/F-test 1 with real contrast/F-test 15?
set fmri(conmask1_15) 0

# Mask real contrast/F-test 1 with real contrast/F-test 16?
set fmri(conmask1_16) 0

# Mask real contrast/F-test 1 with real contrast/F-test 17?
set fmri(conmask1_17) 0

# Mask real contrast/F-test 1 with real contrast/F-test 18?
set fmri(conmask1_18) 0

# Mask real contrast/F-test 1 with real contrast/F-test 19?
set fmri(conmask1_19) 0

# Mask real contrast/F-test 1 with real contrast/F-test 20?
set fmri(conmask1_20) 0

# Mask real contrast/F-test 2 with real contrast/F-test 1?
set fmri(conmask2_1) 0

# Mask real contrast/F-test 2 with real contrast/F-test 3?
set fmri(conmask2_3) 0

# Mask real contrast/F-test 2 with real contrast/F-test 4?
set fmri(conmask2_4) 0

# Mask real contrast/F-test 2 with real contrast/F-test 5?
set fmri(conmask2_5) 0

# Mask real contrast/F-test 2 with real contrast/F-test 6?
set fmri(conmask2_6) 0

# Mask real contrast/F-test 2 with real contrast/F-test 7?
set fmri(conmask2_7) 0

# Mask real contrast/F-test 2 with real contrast/F-test 8?
set fmri(conmask2_8) 0

# Mask real contrast/F-test 2 with real contrast/F-test 9?
set fmri(conmask2_9) 0

# Mask real contrast/F-test 2 with real contrast/F-test 10?
set fmri(conmask2_10) 0

# Mask real contrast/F-test 2 with real contrast/F-test 11?
set fmri(conmask2_11) 0

# Mask real contrast/F-test 2 with real contrast/F-test 12?
set fmri(conmask2_12) 0

# Mask real contrast/F-test 2 with real contrast/F-test 13?
set fmri(conmask2_13) 0

# Mask real contrast/F-test 2 with real contrast/F-test 14?
set fmri(conmask2_14) 0

# Mask real contrast/F-test 2 with real contrast/F-test 15?
set fmri(conmask2_15) 0

# Mask real contrast/F-test 2 with real contrast/F-test 16?
set fmri(conmask2_16) 0

# Mask real contrast/F-test 2 with real contrast/F-test 17?
set fmri(conmask2_17) 0

# Mask real contrast/F-test 2 with real contrast/F-test 18?
set fmri(conmask2_18) 0

# Mask real contrast/F-test 2 with real contrast/F-test 19?
set fmri(conmask2_19) 0

# Mask real contrast/F-test 2 with real contrast/F-test 20?
set fmri(conmask2_20) 0

# Mask real contrast/F-test 3 with real contrast/F-test 1?
set fmri(conmask3_1) 0

# Mask real contrast/F-test 3 with real contrast/F-test 2?
set fmri(conmask3_2) 0

# Mask real contrast/F-test 3 with real contrast/F-test 4?
set fmri(conmask3_4) 0

# Mask real contrast/F-test 3 with real contrast/F-test 5?
set fmri(conmask3_5) 0

# Mask real contrast/F-test 3 with real contrast/F-test 6?
set fmri(conmask3_6) 0

# Mask real contrast/F-test 3 with real contrast/F-test 7?
set fmri(conmask3_7) 0

# Mask real contrast/F-test 3 with real contrast/F-test 8?
set fmri(conmask3_8) 0

# Mask real contrast/F-test 3 with real contrast/F-test 9?
set fmri(conmask3_9) 0

# Mask real contrast/F-test 3 with real contrast/F-test 10?
set fmri(conmask3_10) 0

# Mask real contrast/F-test 3 with real contrast/F-test 11?
set fmri(conmask3_11) 0

# Mask real contrast/F-test 3 with real contrast/F-test 12?
set fmri(conmask3_12) 0

# Mask real contrast/F-test 3 with real contrast/F-test 13?
set fmri(conmask3_13) 0

# Mask real contrast/F-test 3 with real contrast/F-test 14?
set fmri(conmask3_14) 0

# Mask real contrast/F-test 3 with real contrast/F-test 15?
set fmri(conmask3_15) 0

# Mask real contrast/F-test 3 with real contrast/F-test 16?
set fmri(conmask3_16) 0

# Mask real contrast/F-test 3 with real contrast/F-test 17?
set fmri(conmask3_17) 0

# Mask real contrast/F-test 3 with real contrast/F-test 18?
set fmri(conmask3_18) 0

# Mask real contrast/F-test 3 with real contrast/F-test 19?
set fmri(conmask3_19) 0

# Mask real contrast/F-test 3 with real contrast/F-test 20?
set fmri(conmask3_20) 0

# Mask real contrast/F-test 4 with real contrast/F-test 1?
set fmri(conmask4_1) 0

# Mask real contrast/F-test 4 with real contrast/F-test 2?
set fmri(conmask4_2) 0

# Mask real contrast/F-test 4 with real contrast/F-test 3?
set fmri(conmask4_3) 0

# Mask real contrast/F-test 4 with real contrast/F-test 5?
set fmri(conmask4_5) 0

# Mask real contrast/F-test 4 with real contrast/F-test 6?
set fmri(conmask4_6) 0

# Mask real contrast/F-test 4 with real contrast/F-test 7?
set fmri(conmask4_7) 0

# Mask real contrast/F-test 4 with real contrast/F-test 8?
set fmri(conmask4_8) 0

# Mask real contrast/F-test 4 with real contrast/F-test 9?
set fmri(conmask4_9) 0

# Mask real contrast/F-test 4 with real contrast/F-test 10?
set fmri(conmask4_10) 0

# Mask real contrast/F-test 4 with real contrast/F-test 11?
set fmri(conmask4_11) 0

# Mask real contrast/F-test 4 with real contrast/F-test 12?
set fmri(conmask4_12) 0

# Mask real contrast/F-test 4 with real contrast/F-test 13?
set fmri(conmask4_13) 0

# Mask real contrast/F-test 4 with real contrast/F-test 14?
set fmri(conmask4_14) 0

# Mask real contrast/F-test 4 with real contrast/F-test 15?
set fmri(conmask4_15) 0

# Mask real contrast/F-test 4 with real contrast/F-test 16?
set fmri(conmask4_16) 0

# Mask real contrast/F-test 4 with real contrast/F-test 17?
set fmri(conmask4_17) 0

# Mask real contrast/F-test 4 with real contrast/F-test 18?
set fmri(conmask4_18) 0

# Mask real contrast/F-test 4 with real contrast/F-test 19?
set fmri(conmask4_19) 0

# Mask real contrast/F-test 4 with real contrast/F-test 20?
set fmri(conmask4_20) 0

# Mask real contrast/F-test 5 with real contrast/F-test 1?
set fmri(conmask5_1) 0

# Mask real contrast/F-test 5 with real contrast/F-test 2?
set fmri(conmask5_2) 0

# Mask real contrast/F-test 5 with real contrast/F-test 3?
set fmri(conmask5_3) 0

# Mask real contrast/F-test 5 with real contrast/F-test 4?
set fmri(conmask5_4) 0

# Mask real contrast/F-test 5 with real contrast/F-test 6?
set fmri(conmask5_6) 0

# Mask real contrast/F-test 5 with real contrast/F-test 7?
set fmri(conmask5_7) 0

# Mask real contrast/F-test 5 with real contrast/F-test 8?
set fmri(conmask5_8) 0

# Mask real contrast/F-test 5 with real contrast/F-test 9?
set fmri(conmask5_9) 0

# Mask real contrast/F-test 5 with real contrast/F-test 10?
set fmri(conmask5_10) 0

# Mask real contrast/F-test 5 with real contrast/F-test 11?
set fmri(conmask5_11) 0

# Mask real contrast/F-test 5 with real contrast/F-test 12?
set fmri(conmask5_12) 0

# Mask real contrast/F-test 5 with real contrast/F-test 13?
set fmri(conmask5_13) 0

# Mask real contrast/F-test 5 with real contrast/F-test 14?
set fmri(conmask5_14) 0

# Mask real contrast/F-test 5 with real contrast/F-test 15?
set fmri(conmask5_15) 0

# Mask real contrast/F-test 5 with real contrast/F-test 16?
set fmri(conmask5_16) 0

# Mask real contrast/F-test 5 with real contrast/F-test 17?
set fmri(conmask5_17) 0

# Mask real contrast/F-test 5 with real contrast/F-test 18?
set fmri(conmask5_18) 0

# Mask real contrast/F-test 5 with real contrast/F-test 19?
set fmri(conmask5_19) 0

# Mask real contrast/F-test 5 with real contrast/F-test 20?
set fmri(conmask5_20) 0

# Mask real contrast/F-test 6 with real contrast/F-test 1?
set fmri(conmask6_1) 0

# Mask real contrast/F-test 6 with real contrast/F-test 2?
set fmri(conmask6_2) 0

# Mask real contrast/F-test 6 with real contrast/F-test 3?
set fmri(conmask6_3) 0

# Mask real contrast/F-test 6 with real contrast/F-test 4?
set fmri(conmask6_4) 0

# Mask real contrast/F-test 6 with real contrast/F-test 5?
set fmri(conmask6_5) 0

# Mask real contrast/F-test 6 with real contrast/F-test 7?
set fmri(conmask6_7) 0

# Mask real contrast/F-test 6 with real contrast/F-test 8?
set fmri(conmask6_8) 0

# Mask real contrast/F-test 6 with real contrast/F-test 9?
set fmri(conmask6_9) 0

# Mask real contrast/F-test 6 with real contrast/F-test 10?
set fmri(conmask6_10) 0

# Mask real contrast/F-test 6 with real contrast/F-test 11?
set fmri(conmask6_11) 0

# Mask real contrast/F-test 6 with real contrast/F-test 12?
set fmri(conmask6_12) 0

# Mask real contrast/F-test 6 with real contrast/F-test 13?
set fmri(conmask6_13) 0

# Mask real contrast/F-test 6 with real contrast/F-test 14?
set fmri(conmask6_14) 0

# Mask real contrast/F-test 6 with real contrast/F-test 15?
set fmri(conmask6_15) 0

# Mask real contrast/F-test 6 with real contrast/F-test 16?
set fmri(conmask6_16) 0

# Mask real contrast/F-test 6 with real contrast/F-test 17?
set fmri(conmask6_17) 0

# Mask real contrast/F-test 6 with real contrast/F-test 18?
set fmri(conmask6_18) 0

# Mask real contrast/F-test 6 with real contrast/F-test 19?
set fmri(conmask6_19) 0

# Mask real contrast/F-test 6 with real contrast/F-test 20?
set fmri(conmask6_20) 0

# Mask real contrast/F-test 7 with real contrast/F-test 1?
set fmri(conmask7_1) 0

# Mask real contrast/F-test 7 with real contrast/F-test 2?
set fmri(conmask7_2) 0

# Mask real contrast/F-test 7 with real contrast/F-test 3?
set fmri(conmask7_3) 0

# Mask real contrast/F-test 7 with real contrast/F-test 4?
set fmri(conmask7_4) 0

# Mask real contrast/F-test 7 with real contrast/F-test 5?
set fmri(conmask7_5) 0

# Mask real contrast/F-test 7 with real contrast/F-test 6?
set fmri(conmask7_6) 0

# Mask real contrast/F-test 7 with real contrast/F-test 8?
set fmri(conmask7_8) 0

# Mask real contrast/F-test 7 with real contrast/F-test 9?
set fmri(conmask7_9) 0

# Mask real contrast/F-test 7 with real contrast/F-test 10?
set fmri(conmask7_10) 0

# Mask real contrast/F-test 7 with real contrast/F-test 11?
set fmri(conmask7_11) 0

# Mask real contrast/F-test 7 with real contrast/F-test 12?
set fmri(conmask7_12) 0

# Mask real contrast/F-test 7 with real contrast/F-test 13?
set fmri(conmask7_13) 0

# Mask real contrast/F-test 7 with real contrast/F-test 14?
set fmri(conmask7_14) 0

# Mask real contrast/F-test 7 with real contrast/F-test 15?
set fmri(conmask7_15) 0

# Mask real contrast/F-test 7 with real contrast/F-test 16?
set fmri(conmask7_16) 0

# Mask real contrast/F-test 7 with real contrast/F-test 17?
set fmri(conmask7_17) 0

# Mask real contrast/F-test 7 with real contrast/F-test 18?
set fmri(conmask7_18) 0

# Mask real contrast/F-test 7 with real contrast/F-test 19?
set fmri(conmask7_19) 0

# Mask real contrast/F-test 7 with real contrast/F-test 20?
set fmri(conmask7_20) 0

# Mask real contrast/F-test 8 with real contrast/F-test 1?
set fmri(conmask8_1) 0

# Mask real contrast/F-test 8 with real contrast/F-test 2?
set fmri(conmask8_2) 0

# Mask real contrast/F-test 8 with real contrast/F-test 3?
set fmri(conmask8_3) 0

# Mask real contrast/F-test 8 with real contrast/F-test 4?
set fmri(conmask8_4) 0

# Mask real contrast/F-test 8 with real contrast/F-test 5?
set fmri(conmask8_5) 0

# Mask real contrast/F-test 8 with real contrast/F-test 6?
set fmri(conmask8_6) 0

# Mask real contrast/F-test 8 with real contrast/F-test 7?
set fmri(conmask8_7) 0

# Mask real contrast/F-test 8 with real contrast/F-test 9?
set fmri(conmask8_9) 0

# Mask real contrast/F-test 8 with real contrast/F-test 10?
set fmri(conmask8_10) 0

# Mask real contrast/F-test 8 with real contrast/F-test 11?
set fmri(conmask8_11) 0

# Mask real contrast/F-test 8 with real contrast/F-test 12?
set fmri(conmask8_12) 0

# Mask real contrast/F-test 8 with real contrast/F-test 13?
set fmri(conmask8_13) 0

# Mask real contrast/F-test 8 with real contrast/F-test 14?
set fmri(conmask8_14) 0

# Mask real contrast/F-test 8 with real contrast/F-test 15?
set fmri(conmask8_15) 0

# Mask real contrast/F-test 8 with real contrast/F-test 16?
set fmri(conmask8_16) 0

# Mask real contrast/F-test 8 with real contrast/F-test 17?
set fmri(conmask8_17) 0

# Mask real contrast/F-test 8 with real contrast/F-test 18?
set fmri(conmask8_18) 0

# Mask real contrast/F-test 8 with real contrast/F-test 19?
set fmri(conmask8_19) 0

# Mask real contrast/F-test 8 with real contrast/F-test 20?
set fmri(conmask8_20) 0

# Mask real contrast/F-test 9 with real contrast/F-test 1?
set fmri(conmask9_1) 0

# Mask real contrast/F-test 9 with real contrast/F-test 2?
set fmri(conmask9_2) 0

# Mask real contrast/F-test 9 with real contrast/F-test 3?
set fmri(conmask9_3) 0

# Mask real contrast/F-test 9 with real contrast/F-test 4?
set fmri(conmask9_4) 0

# Mask real contrast/F-test 9 with real contrast/F-test 5?
set fmri(conmask9_5) 0

# Mask real contrast/F-test 9 with real contrast/F-test 6?
set fmri(conmask9_6) 0

# Mask real contrast/F-test 9 with real contrast/F-test 7?
set fmri(conmask9_7) 0

# Mask real contrast/F-test 9 with real contrast/F-test 8?
set fmri(conmask9_8) 0

# Mask real contrast/F-test 9 with real contrast/F-test 10?
set fmri(conmask9_10) 0

# Mask real contrast/F-test 9 with real contrast/F-test 11?
set fmri(conmask9_11) 0

# Mask real contrast/F-test 9 with real contrast/F-test 12?
set fmri(conmask9_12) 0

# Mask real contrast/F-test 9 with real contrast/F-test 13?
set fmri(conmask9_13) 0

# Mask real contrast/F-test 9 with real contrast/F-test 14?
set fmri(conmask9_14) 0

# Mask real contrast/F-test 9 with real contrast/F-test 15?
set fmri(conmask9_15) 0

# Mask real contrast/F-test 9 with real contrast/F-test 16?
set fmri(conmask9_16) 0

# Mask real contrast/F-test 9 with real contrast/F-test 17?
set fmri(conmask9_17) 0

# Mask real contrast/F-test 9 with real contrast/F-test 18?
set fmri(conmask9_18) 0

# Mask real contrast/F-test 9 with real contrast/F-test 19?
set fmri(conmask9_19) 0

# Mask real contrast/F-test 9 with real contrast/F-test 20?
set fmri(conmask9_20) 0

# Mask real contrast/F-test 10 with real contrast/F-test 1?
set fmri(conmask10_1) 0

# Mask real contrast/F-test 10 with real contrast/F-test 2?
set fmri(conmask10_2) 0

# Mask real contrast/F-test 10 with real contrast/F-test 3?
set fmri(conmask10_3) 0

# Mask real contrast/F-test 10 with real contrast/F-test 4?
set fmri(conmask10_4) 0

# Mask real contrast/F-test 10 with real contrast/F-test 5?
set fmri(conmask10_5) 0

# Mask real contrast/F-test 10 with real contrast/F-test 6?
set fmri(conmask10_6) 0

# Mask real contrast/F-test 10 with real contrast/F-test 7?
set fmri(conmask10_7) 0

# Mask real contrast/F-test 10 with real contrast/F-test 8?
set fmri(conmask10_8) 0

# Mask real contrast/F-test 10 with real contrast/F-test 9?
set fmri(conmask10_9) 0

# Mask real contrast/F-test 10 with real contrast/F-test 11?
set fmri(conmask10_11) 0

# Mask real contrast/F-test 10 with real contrast/F-test 12?
set fmri(conmask10_12) 0

# Mask real contrast/F-test 10 with real contrast/F-test 13?
set fmri(conmask10_13) 0

# Mask real contrast/F-test 10 with real contrast/F-test 14?
set fmri(conmask10_14) 0

# Mask real contrast/F-test 10 with real contrast/F-test 15?
set fmri(conmask10_15) 0

# Mask real contrast/F-test 10 with real contrast/F-test 16?
set fmri(conmask10_16) 0

# Mask real contrast/F-test 10 with real contrast/F-test 17?
set fmri(conmask10_17) 0

# Mask real contrast/F-test 10 with real contrast/F-test 18?
set fmri(conmask10_18) 0

# Mask real contrast/F-test 10 with real contrast/F-test 19?
set fmri(conmask10_19) 0

# Mask real contrast/F-test 10 with real contrast/F-test 20?
set fmri(conmask10_20) 0

# Mask real contrast/F-test 11 with real contrast/F-test 1?
set fmri(conmask11_1) 0

# Mask real contrast/F-test 11 with real contrast/F-test 2?
set fmri(conmask11_2) 0

# Mask real contrast/F-test 11 with real contrast/F-test 3?
set fmri(conmask11_3) 0

# Mask real contrast/F-test 11 with real contrast/F-test 4?
set fmri(conmask11_4) 0

# Mask real contrast/F-test 11 with real contrast/F-test 5?
set fmri(conmask11_5) 0

# Mask real contrast/F-test 11 with real contrast/F-test 6?
set fmri(conmask11_6) 0

# Mask real contrast/F-test 11 with real contrast/F-test 7?
set fmri(conmask11_7) 0

# Mask real contrast/F-test 11 with real contrast/F-test 8?
set fmri(conmask11_8) 0

# Mask real contrast/F-test 11 with real contrast/F-test 9?
set fmri(conmask11_9) 0

# Mask real contrast/F-test 11 with real contrast/F-test 10?
set fmri(conmask11_10) 0

# Mask real contrast/F-test 11 with real contrast/F-test 12?
set fmri(conmask11_12) 0

# Mask real contrast/F-test 11 with real contrast/F-test 13?
set fmri(conmask11_13) 0

# Mask real contrast/F-test 11 with real contrast/F-test 14?
set fmri(conmask11_14) 0

# Mask real contrast/F-test 11 with real contrast/F-test 15?
set fmri(conmask11_15) 0

# Mask real contrast/F-test 11 with real contrast/F-test 16?
set fmri(conmask11_16) 0

# Mask real contrast/F-test 11 with real contrast/F-test 17?
set fmri(conmask11_17) 0

# Mask real contrast/F-test 11 with real contrast/F-test 18?
set fmri(conmask11_18) 0

# Mask real contrast/F-test 11 with real contrast/F-test 19?
set fmri(conmask11_19) 0

# Mask real contrast/F-test 11 with real contrast/F-test 20?
set fmri(conmask11_20) 0

# Mask real contrast/F-test 12 with real contrast/F-test 1?
set fmri(conmask12_1) 0

# Mask real contrast/F-test 12 with real contrast/F-test 2?
set fmri(conmask12_2) 0

# Mask real contrast/F-test 12 with real contrast/F-test 3?
set fmri(conmask12_3) 0

# Mask real contrast/F-test 12 with real contrast/F-test 4?
set fmri(conmask12_4) 0

# Mask real contrast/F-test 12 with real contrast/F-test 5?
set fmri(conmask12_5) 0

# Mask real contrast/F-test 12 with real contrast/F-test 6?
set fmri(conmask12_6) 0

# Mask real contrast/F-test 12 with real contrast/F-test 7?
set fmri(conmask12_7) 0

# Mask real contrast/F-test 12 with real contrast/F-test 8?
set fmri(conmask12_8) 0

# Mask real contrast/F-test 12 with real contrast/F-test 9?
set fmri(conmask12_9) 0

# Mask real contrast/F-test 12 with real contrast/F-test 10?
set fmri(conmask12_10) 0

# Mask real contrast/F-test 12 with real contrast/F-test 11?
set fmri(conmask12_11) 0

# Mask real contrast/F-test 12 with real contrast/F-test 13?
set fmri(conmask12_13) 0

# Mask real contrast/F-test 12 with real contrast/F-test 14?
set fmri(conmask12_14) 0

# Mask real contrast/F-test 12 with real contrast/F-test 15?
set fmri(conmask12_15) 0

# Mask real contrast/F-test 12 with real contrast/F-test 16?
set fmri(conmask12_16) 0

# Mask real contrast/F-test 12 with real contrast/F-test 17?
set fmri(conmask12_17) 0

# Mask real contrast/F-test 12 with real contrast/F-test 18?
set fmri(conmask12_18) 0

# Mask real contrast/F-test 12 with real contrast/F-test 19?
set fmri(conmask12_19) 0

# Mask real contrast/F-test 12 with real contrast/F-test 20?
set fmri(conmask12_20) 0

# Mask real contrast/F-test 13 with real contrast/F-test 1?
set fmri(conmask13_1) 0

# Mask real contrast/F-test 13 with real contrast/F-test 2?
set fmri(conmask13_2) 0

# Mask real contrast/F-test 13 with real contrast/F-test 3?
set fmri(conmask13_3) 0

# Mask real contrast/F-test 13 with real contrast/F-test 4?
set fmri(conmask13_4) 0

# Mask real contrast/F-test 13 with real contrast/F-test 5?
set fmri(conmask13_5) 0

# Mask real contrast/F-test 13 with real contrast/F-test 6?
set fmri(conmask13_6) 0

# Mask real contrast/F-test 13 with real contrast/F-test 7?
set fmri(conmask13_7) 0

# Mask real contrast/F-test 13 with real contrast/F-test 8?
set fmri(conmask13_8) 0

# Mask real contrast/F-test 13 with real contrast/F-test 9?
set fmri(conmask13_9) 0

# Mask real contrast/F-test 13 with real contrast/F-test 10?
set fmri(conmask13_10) 0

# Mask real contrast/F-test 13 with real contrast/F-test 11?
set fmri(conmask13_11) 0

# Mask real contrast/F-test 13 with real contrast/F-test 12?
set fmri(conmask13_12) 0

# Mask real contrast/F-test 13 with real contrast/F-test 14?
set fmri(conmask13_14) 0

# Mask real contrast/F-test 13 with real contrast/F-test 15?
set fmri(conmask13_15) 0

# Mask real contrast/F-test 13 with real contrast/F-test 16?
set fmri(conmask13_16) 0

# Mask real contrast/F-test 13 with real contrast/F-test 17?
set fmri(conmask13_17) 0

# Mask real contrast/F-test 13 with real contrast/F-test 18?
set fmri(conmask13_18) 0

# Mask real contrast/F-test 13 with real contrast/F-test 19?
set fmri(conmask13_19) 0

# Mask real contrast/F-test 13 with real contrast/F-test 20?
set fmri(conmask13_20) 0

# Mask real contrast/F-test 14 with real contrast/F-test 1?
set fmri(conmask14_1) 0

# Mask real contrast/F-test 14 with real contrast/F-test 2?
set fmri(conmask14_2) 0

# Mask real contrast/F-test 14 with real contrast/F-test 3?
set fmri(conmask14_3) 0

# Mask real contrast/F-test 14 with real contrast/F-test 4?
set fmri(conmask14_4) 0

# Mask real contrast/F-test 14 with real contrast/F-test 5?
set fmri(conmask14_5) 0

# Mask real contrast/F-test 14 with real contrast/F-test 6?
set fmri(conmask14_6) 0

# Mask real contrast/F-test 14 with real contrast/F-test 7?
set fmri(conmask14_7) 0

# Mask real contrast/F-test 14 with real contrast/F-test 8?
set fmri(conmask14_8) 0

# Mask real contrast/F-test 14 with real contrast/F-test 9?
set fmri(conmask14_9) 0

# Mask real contrast/F-test 14 with real contrast/F-test 10?
set fmri(conmask14_10) 0

# Mask real contrast/F-test 14 with real contrast/F-test 11?
set fmri(conmask14_11) 0

# Mask real contrast/F-test 14 with real contrast/F-test 12?
set fmri(conmask14_12) 0

# Mask real contrast/F-test 14 with real contrast/F-test 13?
set fmri(conmask14_13) 0

# Mask real contrast/F-test 14 with real contrast/F-test 15?
set fmri(conmask14_15) 0

# Mask real contrast/F-test 14 with real contrast/F-test 16?
set fmri(conmask14_16) 0

# Mask real contrast/F-test 14 with real contrast/F-test 17?
set fmri(conmask14_17) 0

# Mask real contrast/F-test 14 with real contrast/F-test 18?
set fmri(conmask14_18) 0

# Mask real contrast/F-test 14 with real contrast/F-test 19?
set fmri(conmask14_19) 0

# Mask real contrast/F-test 14 with real contrast/F-test 20?
set fmri(conmask14_20) 0

# Mask real contrast/F-test 15 with real contrast/F-test 1?
set fmri(conmask15_1) 0

# Mask real contrast/F-test 15 with real contrast/F-test 2?
set fmri(conmask15_2) 0

# Mask real contrast/F-test 15 with real contrast/F-test 3?
set fmri(conmask15_3) 0

# Mask real contrast/F-test 15 with real contrast/F-test 4?
set fmri(conmask15_4) 0

# Mask real contrast/F-test 15 with real contrast/F-test 5?
set fmri(conmask15_5) 0

# Mask real contrast/F-test 15 with real contrast/F-test 6?
set fmri(conmask15_6) 0

# Mask real contrast/F-test 15 with real contrast/F-test 7?
set fmri(conmask15_7) 0

# Mask real contrast/F-test 15 with real contrast/F-test 8?
set fmri(conmask15_8) 0

# Mask real contrast/F-test 15 with real contrast/F-test 9?
set fmri(conmask15_9) 0

# Mask real contrast/F-test 15 with real contrast/F-test 10?
set fmri(conmask15_10) 0

# Mask real contrast/F-test 15 with real contrast/F-test 11?
set fmri(conmask15_11) 0

# Mask real contrast/F-test 15 with real contrast/F-test 12?
set fmri(conmask15_12) 0

# Mask real contrast/F-test 15 with real contrast/F-test 13?
set fmri(conmask15_13) 0

# Mask real contrast/F-test 15 with real contrast/F-test 14?
set fmri(conmask15_14) 0

# Mask real contrast/F-test 15 with real contrast/F-test 16?
set fmri(conmask15_16) 0

# Mask real contrast/F-test 15 with real contrast/F-test 17?
set fmri(conmask15_17) 0

# Mask real contrast/F-test 15 with real contrast/F-test 18?
set fmri(conmask15_18) 0

# Mask real contrast/F-test 15 with real contrast/F-test 19?
set fmri(conmask15_19) 0

# Mask real contrast/F-test 15 with real contrast/F-test 20?
set fmri(conmask15_20) 0

# Mask real contrast/F-test 16 with real contrast/F-test 1?
set fmri(conmask16_1) 0

# Mask real contrast/F-test 16 with real contrast/F-test 2?
set fmri(conmask16_2) 0

# Mask real contrast/F-test 16 with real contrast/F-test 3?
set fmri(conmask16_3) 0

# Mask real contrast/F-test 16 with real contrast/F-test 4?
set fmri(conmask16_4) 0

# Mask real contrast/F-test 16 with real contrast/F-test 5?
set fmri(conmask16_5) 0

# Mask real contrast/F-test 16 with real contrast/F-test 6?
set fmri(conmask16_6) 0

# Mask real contrast/F-test 16 with real contrast/F-test 7?
set fmri(conmask16_7) 0

# Mask real contrast/F-test 16 with real contrast/F-test 8?
set fmri(conmask16_8) 0

# Mask real contrast/F-test 16 with real contrast/F-test 9?
set fmri(conmask16_9) 0

# Mask real contrast/F-test 16 with real contrast/F-test 10?
set fmri(conmask16_10) 0

# Mask real contrast/F-test 16 with real contrast/F-test 11?
set fmri(conmask16_11) 0

# Mask real contrast/F-test 16 with real contrast/F-test 12?
set fmri(conmask16_12) 0

# Mask real contrast/F-test 16 with real contrast/F-test 13?
set fmri(conmask16_13) 0

# Mask real contrast/F-test 16 with real contrast/F-test 14?
set fmri(conmask16_14) 0

# Mask real contrast/F-test 16 with real contrast/F-test 15?
set fmri(conmask16_15) 0

# Mask real contrast/F-test 16 with real contrast/F-test 17?
set fmri(conmask16_17) 0

# Mask real contrast/F-test 16 with real contrast/F-test 18?
set fmri(conmask16_18) 0

# Mask real contrast/F-test 16 with real contrast/F-test 19?
set fmri(conmask16_19) 0

# Mask real contrast/F-test 16 with real contrast/F-test 20?
set fmri(conmask16_20) 0

# Mask real contrast/F-test 17 with real contrast/F-test 1?
set fmri(conmask17_1) 0

# Mask real contrast/F-test 17 with real contrast/F-test 2?
set fmri(conmask17_2) 0

# Mask real contrast/F-test 17 with real contrast/F-test 3?
set fmri(conmask17_3) 0

# Mask real contrast/F-test 17 with real contrast/F-test 4?
set fmri(conmask17_4) 0

# Mask real contrast/F-test 17 with real contrast/F-test 5?
set fmri(conmask17_5) 0

# Mask real contrast/F-test 17 with real contrast/F-test 6?
set fmri(conmask17_6) 0

# Mask real contrast/F-test 17 with real contrast/F-test 7?
set fmri(conmask17_7) 0

# Mask real contrast/F-test 17 with real contrast/F-test 8?
set fmri(conmask17_8) 0

# Mask real contrast/F-test 17 with real contrast/F-test 9?
set fmri(conmask17_9) 0

# Mask real contrast/F-test 17 with real contrast/F-test 10?
set fmri(conmask17_10) 0

# Mask real contrast/F-test 17 with real contrast/F-test 11?
set fmri(conmask17_11) 0

# Mask real contrast/F-test 17 with real contrast/F-test 12?
set fmri(conmask17_12) 0

# Mask real contrast/F-test 17 with real contrast/F-test 13?
set fmri(conmask17_13) 0

# Mask real contrast/F-test 17 with real contrast/F-test 14?
set fmri(conmask17_14) 0

# Mask real contrast/F-test 17 with real contrast/F-test 15?
set fmri(conmask17_15) 0

# Mask real contrast/F-test 17 with real contrast/F-test 16?
set fmri(conmask17_16) 0

# Mask real contrast/F-test 17 with real contrast/F-test 18?
set fmri(conmask17_18) 0

# Mask real contrast/F-test 17 with real contrast/F-test 19?
set fmri(conmask17_19) 0

# Mask real contrast/F-test 17 with real contrast/F-test 20?
set fmri(conmask17_20) 0

# Mask real contrast/F-test 18 with real contrast/F-test 1?
set fmri(conmask18_1) 0

# Mask real contrast/F-test 18 with real contrast/F-test 2?
set fmri(conmask18_2) 0

# Mask real contrast/F-test 18 with real contrast/F-test 3?
set fmri(conmask18_3) 0

# Mask real contrast/F-test 18 with real contrast/F-test 4?
set fmri(conmask18_4) 0

# Mask real contrast/F-test 18 with real contrast/F-test 5?
set fmri(conmask18_5) 0

# Mask real contrast/F-test 18 with real contrast/F-test 6?
set fmri(conmask18_6) 0

# Mask real contrast/F-test 18 with real contrast/F-test 7?
set fmri(conmask18_7) 0

# Mask real contrast/F-test 18 with real contrast/F-test 8?
set fmri(conmask18_8) 0

# Mask real contrast/F-test 18 with real contrast/F-test 9?
set fmri(conmask18_9) 0

# Mask real contrast/F-test 18 with real contrast/F-test 10?
set fmri(conmask18_10) 0

# Mask real contrast/F-test 18 with real contrast/F-test 11?
set fmri(conmask18_11) 0

# Mask real contrast/F-test 18 with real contrast/F-test 12?
set fmri(conmask18_12) 0

# Mask real contrast/F-test 18 with real contrast/F-test 13?
set fmri(conmask18_13) 0

# Mask real contrast/F-test 18 with real contrast/F-test 14?
set fmri(conmask18_14) 0

# Mask real contrast/F-test 18 with real contrast/F-test 15?
set fmri(conmask18_15) 0

# Mask real contrast/F-test 18 with real contrast/F-test 16?
set fmri(conmask18_16) 0

# Mask real contrast/F-test 18 with real contrast/F-test 17?
set fmri(conmask18_17) 0

# Mask real contrast/F-test 18 with real contrast/F-test 19?
set fmri(conmask18_19) 0

# Mask real contrast/F-test 18 with real contrast/F-test 20?
set fmri(conmask18_20) 0

# Mask real contrast/F-test 19 with real contrast/F-test 1?
set fmri(conmask19_1) 0

# Mask real contrast/F-test 19 with real contrast/F-test 2?
set fmri(conmask19_2) 0

# Mask real contrast/F-test 19 with real contrast/F-test 3?
set fmri(conmask19_3) 0

# Mask real contrast/F-test 19 with real contrast/F-test 4?
set fmri(conmask19_4) 0

# Mask real contrast/F-test 19 with real contrast/F-test 5?
set fmri(conmask19_5) 0

# Mask real contrast/F-test 19 with real contrast/F-test 6?
set fmri(conmask19_6) 0

# Mask real contrast/F-test 19 with real contrast/F-test 7?
set fmri(conmask19_7) 0

# Mask real contrast/F-test 19 with real contrast/F-test 8?
set fmri(conmask19_8) 0

# Mask real contrast/F-test 19 with real contrast/F-test 9?
set fmri(conmask19_9) 0

# Mask real contrast/F-test 19 with real contrast/F-test 10?
set fmri(conmask19_10) 0

# Mask real contrast/F-test 19 with real contrast/F-test 11?
set fmri(conmask19_11) 0

# Mask real contrast/F-test 19 with real contrast/F-test 12?
set fmri(conmask19_12) 0

# Mask real contrast/F-test 19 with real contrast/F-test 13?
set fmri(conmask19_13) 0

# Mask real contrast/F-test 19 with real contrast/F-test 14?
set fmri(conmask19_14) 0

# Mask real contrast/F-test 19 with real contrast/F-test 15?
set fmri(conmask19_15) 0

# Mask real contrast/F-test 19 with real contrast/F-test 16?
set fmri(conmask19_16) 0

# Mask real contrast/F-test 19 with real contrast/F-test 17?
set fmri(conmask19_17) 0

# Mask real contrast/F-test 19 with real contrast/F-test 18?
set fmri(conmask19_18) 0

# Mask real contrast/F-test 19 with real contrast/F-test 20?
set fmri(conmask19_20) 0

# Mask real contrast/F-test 20 with real contrast/F-test 1?
set fmri(conmask20_1) 0

# Mask real contrast/F-test 20 with real contrast/F-test 2?
set fmri(conmask20_2) 0

# Mask real contrast/F-test 20 with real contrast/F-test 3?
set fmri(conmask20_3) 0

# Mask real contrast/F-test 20 with real contrast/F-test 4?
set fmri(conmask20_4) 0

# Mask real contrast/F-test 20 with real contrast/F-test 5?
set fmri(conmask20_5) 0

# Mask real contrast/F-test 20 with real contrast/F-test 6?
set fmri(conmask20_6) 0

# Mask real contrast/F-test 20 with real contrast/F-test 7?
set fmri(conmask20_7) 0

# Mask real contrast/F-test 20 with real contrast/F-test 8?
set fmri(conmask20_8) 0

# Mask real contrast/F-test 20 with real contrast/F-test 9?
set fmri(conmask20_9) 0

# Mask real contrast/F-test 20 with real contrast/F-test 10?
set fmri(conmask20_10) 0

# Mask real contrast/F-test 20 with real contrast/F-test 11?
set fmri(conmask20_11) 0

# Mask real contrast/F-test 20 with real contrast/F-test 12?
set fmri(conmask20_12) 0

# Mask real contrast/F-test 20 with real contrast/F-test 13?
set fmri(conmask20_13) 0

# Mask real contrast/F-test 20 with real contrast/F-test 14?
set fmri(conmask20_14) 0

# Mask real contrast/F-test 20 with real contrast/F-test 15?
set fmri(conmask20_15) 0

# Mask real contrast/F-test 20 with real contrast/F-test 16?
set fmri(conmask20_16) 0

# Mask real contrast/F-test 20 with real contrast/F-test 17?
set fmri(conmask20_17) 0

# Mask real contrast/F-test 20 with real contrast/F-test 18?
set fmri(conmask20_18) 0

# Mask real contrast/F-test 20 with real contrast/F-test 19?
set fmri(conmask20_19) 0

# Do contrast masking at all?
set fmri(conmask1_1) 0

##########################################################
# Now options that don t appear in the GUI

# Alternative (to BETting) mask image
set fmri(alternative_mask) ""

# Initial structural space registration initialisation transform
set fmri(init_initial_highres) ""

# Structural space registration initialisation transform
set fmri(init_highres) ""

# Standard space registration initialisation transform
set fmri(init_standard) ""

# For full FEAT analysis: overwrite existing .feat output dir?
set fmri(overwrite_yn) 0


'  > "$text"_PPI_corrected.fsf;
$FSLDIR/bin/feat "$text"_PPI_corrected.fsf
rm "$text"_PPI_corrected.fsf;
done
);
