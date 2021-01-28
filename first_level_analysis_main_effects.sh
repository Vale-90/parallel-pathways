#!/bin/bash
basepath=/home/vo16427/Data

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
set fmri(outputdir) "/home/vo16427/Data/'${i}'/main_effects_complete.feat"

# TR(s)
set fmri(tr) 3.0

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
set fmri(filtering_yn) 1

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
set fmri(mc) 1

# Spin-history (currently obsolete)
set fmri(sh_yn) 0

# B0 fieldmap unwarping?
set fmri(regunwarp_yn) 1

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
set fmri(bet_yn) 1

# Spatial smoothing FWHM (mm)
set fmri(smooth) 4.0

# Intensity normalization
set fmri(norm_yn) 0

# Perfusion subtraction
set fmri(perfsub_yn) 0

# Highpass temporal filtering
set fmri(temphp_yn) 1

# Lowpass temporal filtering
set fmri(templp_yn) 0

# MELODIC ICA data exploration
set fmri(melodic_yn) 0

# Carry out main stats?
set fmri(stats_yn) 1

# Carry out prewhitening?
set fmri(prewhiten_yn) 1

# Add motion parameters to model
# 0 : No
# 1 : Yes
set fmri(motionevs) 0
set fmri(motionevsbeta) "/home/pywer/Data/'${i}'/PNM4D/pnm4d.txt"
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
set fmri(evs_orig) 7
set fmri(evs_real) 14
set fmri(evs_vox) 0

# Number of contrasts
set fmri(ncon_orig) 13
set fmri(ncon_real) 13

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
set fmri(tsplot_yn) 1

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
set fmri(reghighres_yn) 1

# Search space for registration to main structural
# 0   : No search
# 90  : Normal search
# 180 : Full search
set fmri(reghighres_search) 90

# Degrees of Freedom for registration to main structural
set fmri(reghighres_dof) BBR

# Registration to standard image?
set fmri(regstandard_yn) 1

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
set fmri(regstandard_nonlinear_yn) 1

# Control nonlinear warp field resolution
set fmri(regstandard_nonlinear_warpres) 5 

# High pass filter cutoff
set fmri(paradigm_hp) 90

# Total voxels
set fmri(totalVoxels) 224540160


# Number of lower-level copes feeding into higher-level analysis
set fmri(ncopeinputs) 0

# 4D AVW data or FEAT directory (1)
set feat_files(1) "/home/pywer/Data/'${i}'/epi"

# Add confound EVs text file
set fmri(confoundevs) 0

# B0 unwarp input image for analysis 1
set unwarp_files(1) "/home/pywer/Data/'${i}'/fieldmap"

# B0 unwarp mag input image for analysis 1
set unwarp_files_mag(1) "/home/pywer/Data/'${i}'/TE1_brain"

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

# Contrast & F-tests mode
# real : control real EVs
# orig : control original EVs
set fmri(con_mode_old) orig
set fmri(con_mode) orig

# Display images for contrast_real 1
set fmri(conpic_real.1) 1

# Title for contrast_real 1
set fmri(conname_real.1) "watch5s"

# Real contrast_real vector 1 element 1
set fmri(con_real1.1) 1

# Real contrast_real vector 1 element 2
set fmri(con_real1.2) 0

# Real contrast_real vector 1 element 3
set fmri(con_real1.3) 0

# Real contrast_real vector 1 element 4
set fmri(con_real1.4) 0

# Real contrast_real vector 1 element 5
set fmri(con_real1.5) 0

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

# Display images for contrast_real 2
set fmri(conpic_real.2) 1

# Title for contrast_real 2
set fmri(conname_real.2) "control"

# Real contrast_real vector 2 element 1
set fmri(con_real2.1) 0

# Real contrast_real vector 2 element 2
set fmri(con_real2.2) 0

# Real contrast_real vector 2 element 3
set fmri(con_real2.3) 1.0

# Real contrast_real vector 2 element 4
set fmri(con_real2.4) 0

# Real contrast_real vector 2 element 5
set fmri(con_real2.5) 0

# Real contrast_real vector 2 element 6
set fmri(con_real2.6) 0

# Real contrast_real vector 2 element 7
set fmri(con_real2.7) 0

# Real contrast_real vector 2 element 8
set fmri(con_real2.8) 0

# Real contrast_real vector 2 element 9
set fmri(con_real2.9) 0

# Real contrast_real vector 2 element 10
set fmri(con_real2.10) 0

# Real contrast_real vector 2 element 11
set fmri(con_real2.11) 0

# Real contrast_real vector 2 element 12
set fmri(con_real2.12) 0

# Real contrast_real vector 2 element 13
set fmri(con_real2.13) 0

# Real contrast_real vector 2 element 14
set fmri(con_real2.14) 0

# Display images for contrast_real 3
set fmri(conpic_real.3) 1

# Title for contrast_real 3
set fmri(conname_real.3) "easyhigh"

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
set fmri(con_real3.7) 0

# Real contrast_real vector 3 element 8
set fmri(con_real3.8) 0

# Real contrast_real vector 3 element 9
set fmri(con_real3.9) 0

# Real contrast_real vector 3 element 10
set fmri(con_real3.10) 0

# Real contrast_real vector 3 element 11
set fmri(con_real3.11) 0

# Real contrast_real vector 3 element 12
set fmri(con_real3.12) 0

# Real contrast_real vector 3 element 13
set fmri(con_real3.13) 0

# Real contrast_real vector 3 element 14
set fmri(con_real3.14) 0

# Display images for contrast_real 4
set fmri(conpic_real.4) 1

# Title for contrast_real 4
set fmri(conname_real.4) "hardhigh"

# Real contrast_real vector 4 element 1
set fmri(con_real4.1) 0

# Real contrast_real vector 4 element 2
set fmri(con_real4.2) 0

# Real contrast_real vector 4 element 3
set fmri(con_real4.3) 0

# Real contrast_real vector 4 element 4
set fmri(con_real4.4) 0

# Real contrast_real vector 4 element 5
set fmri(con_real4.5) 0

# Real contrast_real vector 4 element 6
set fmri(con_real4.6) 0

# Real contrast_real vector 4 element 7
set fmri(con_real4.7) 1.0

# Real contrast_real vector 4 element 8
set fmri(con_real4.8) 0

# Real contrast_real vector 4 element 9
set fmri(con_real4.9) 0

# Real contrast_real vector 4 element 10
set fmri(con_real4.10) 0

# Real contrast_real vector 4 element 11
set fmri(con_real4.11) 0

# Real contrast_real vector 4 element 12
set fmri(con_real4.12) 0

# Real contrast_real vector 4 element 13
set fmri(con_real4.13) 0

# Real contrast_real vector 4 element 14
set fmri(con_real4.14) 0

# Display images for contrast_real 5
set fmri(conpic_real.5) 1

# Title for contrast_real 5
set fmri(conname_real.5) "easylow"

# Real contrast_real vector 5 element 1
set fmri(con_real5.1) 0

# Real contrast_real vector 5 element 2
set fmri(con_real5.2) 0

# Real contrast_real vector 5 element 3
set fmri(con_real5.3) 0

# Real contrast_real vector 5 element 4
set fmri(con_real5.4) 0

# Real contrast_real vector 5 element 5
set fmri(con_real5.5) 0

# Real contrast_real vector 5 element 6
set fmri(con_real5.6) 0

# Real contrast_real vector 5 element 7
set fmri(con_real5.7) 0

# Real contrast_real vector 5 element 8
set fmri(con_real5.8) 0

# Real contrast_real vector 5 element 9
set fmri(con_real5.9) 1.0

# Real contrast_real vector 5 element 10
set fmri(con_real5.10) 0

# Real contrast_real vector 5 element 11
set fmri(con_real5.11) 0

# Real contrast_real vector 5 element 12
set fmri(con_real5.12) 0

# Real contrast_real vector 5 element 13
set fmri(con_real5.13) 0

# Real contrast_real vector 5 element 14
set fmri(con_real5.14) 0

# Display images for contrast_real 6
set fmri(conpic_real.6) 1

# Title for contrast_real 6
set fmri(conname_real.6) "hardlow"

# Real contrast_real vector 6 element 1
set fmri(con_real6.1) 0

# Real contrast_real vector 6 element 2
set fmri(con_real6.2) 0

# Real contrast_real vector 6 element 3
set fmri(con_real6.3) 0

# Real contrast_real vector 6 element 4
set fmri(con_real6.4) 0

# Real contrast_real vector 6 element 5
set fmri(con_real6.5) 0

# Real contrast_real vector 6 element 6
set fmri(con_real6.6) 0

# Real contrast_real vector 6 element 7
set fmri(con_real6.7) 0

# Real contrast_real vector 6 element 8
set fmri(con_real6.8) 0

# Real contrast_real vector 6 element 9
set fmri(con_real6.9) 0

# Real contrast_real vector 6 element 10
set fmri(con_real6.10) 0

# Real contrast_real vector 6 element 11
set fmri(con_real6.11) 1.0

# Real contrast_real vector 6 element 12
set fmri(con_real6.12) 0

# Real contrast_real vector 6 element 13
set fmri(con_real6.13) 0

# Real contrast_real vector 6 element 14
set fmri(con_real6.14) 0

# Display images for contrast_real 7
set fmri(conpic_real.7) 1

# Title for contrast_real 7
set fmri(conname_real.7) "NRS"

# Real contrast_real vector 7 element 1
set fmri(con_real7.1) 0

# Real contrast_real vector 7 element 2
set fmri(con_real7.2) 0

# Real contrast_real vector 7 element 3
set fmri(con_real7.3) 0

# Real contrast_real vector 7 element 4
set fmri(con_real7.4) 0

# Real contrast_real vector 7 element 5
set fmri(con_real7.5) 0

# Real contrast_real vector 7 element 6
set fmri(con_real7.6) 0

# Real contrast_real vector 7 element 7
set fmri(con_real7.7) 0

# Real contrast_real vector 7 element 8
set fmri(con_real7.8) 0

# Real contrast_real vector 7 element 9
set fmri(con_real7.9) 0

# Real contrast_real vector 7 element 10
set fmri(con_real7.10) 0

# Real contrast_real vector 7 element 11
set fmri(con_real7.11) 0

# Real contrast_real vector 7 element 12
set fmri(con_real7.12) 0

# Real contrast_real vector 7 element 13
set fmri(con_real7.13) 1.0

# Real contrast_real vector 7 element 14
set fmri(con_real7.14) 0

# Display images for contrast_real 8
set fmri(conpic_real.8) 1

# Title for contrast_real 8
set fmri(conname_real.8) "ME_distract"

# Real contrast_real vector 8 element 1
set fmri(con_real8.1) 0

# Real contrast_real vector 8 element 2
set fmri(con_real8.2) 0

# Real contrast_real vector 8 element 3
set fmri(con_real8.3) 0.0

# Real contrast_real vector 8 element 4
set fmri(con_real8.4) 0

# Real contrast_real vector 8 element 5
set fmri(con_real8.5) -1.0

# Real contrast_real vector 8 element 6
set fmri(con_real8.6) 0

# Real contrast_real vector 8 element 7
set fmri(con_real8.7) 1.0

# Real contrast_real vector 8 element 8
set fmri(con_real8.8) 0

# Real contrast_real vector 8 element 9
set fmri(con_real8.9) -1.0

# Real contrast_real vector 8 element 10
set fmri(con_real8.10) 0

# Real contrast_real vector 8 element 11
set fmri(con_real8.11) 1.0

# Real contrast_real vector 8 element 12
set fmri(con_real8.12) 0

# Real contrast_real vector 8 element 13
set fmri(con_real8.13) 0

# Real contrast_real vector 8 element 14
set fmri(con_real8.14) 0

# Display images for contrast_real 9
set fmri(conpic_real.9) 1

# Title for contrast_real 9
set fmri(conname_real.9) "ME_temp"

# Real contrast_real vector 9 element 1
set fmri(con_real9.1) 0

# Real contrast_real vector 9 element 2
set fmri(con_real9.2) 0

# Real contrast_real vector 9 element 3
set fmri(con_real9.3) 0

# Real contrast_real vector 9 element 4
set fmri(con_real9.4) 0

# Real contrast_real vector 9 element 5
set fmri(con_real9.5) 1.0

# Real contrast_real vector 9 element 6
set fmri(con_real9.6) 0

# Real contrast_real vector 9 element 7
set fmri(con_real9.7) 1.0

# Real contrast_real vector 9 element 8
set fmri(con_real9.8) 0

# Real contrast_real vector 9 element 9
set fmri(con_real9.9) -1.0

# Real contrast_real vector 9 element 10
set fmri(con_real9.10) 0

# Real contrast_real vector 9 element 11
set fmri(con_real9.11) -1.0

# Real contrast_real vector 9 element 12
set fmri(con_real9.12) 0

# Real contrast_real vector 9 element 13
set fmri(con_real9.13) 0

# Real contrast_real vector 9 element 14
set fmri(con_real9.14) 0

# Display images for contrast_real 10
set fmri(conpic_real.10) 1

# Title for contrast_real 10
set fmri(conname_real.10) "neg_MED"

# Real contrast_real vector 10 element 1
set fmri(con_real10.1) 0

# Real contrast_real vector 10 element 2
set fmri(con_real10.2) 0

# Real contrast_real vector 10 element 3
set fmri(con_real10.3) 0

# Real contrast_real vector 10 element 4
set fmri(con_real10.4) 0

# Real contrast_real vector 10 element 5
set fmri(con_real10.5) 1.0

# Real contrast_real vector 10 element 6
set fmri(con_real10.6) 0

# Real contrast_real vector 10 element 7
set fmri(con_real10.7) -1.0

# Real contrast_real vector 10 element 8
set fmri(con_real10.8) 0

# Real contrast_real vector 10 element 9
set fmri(con_real10.9) 1.0

# Real contrast_real vector 10 element 10
set fmri(con_real10.10) 0

# Real contrast_real vector 10 element 11
set fmri(con_real10.11) -1.0

# Real contrast_real vector 10 element 12
set fmri(con_real10.12) 0

# Real contrast_real vector 10 element 13
set fmri(con_real10.13) 0

# Real contrast_real vector 10 element 14
set fmri(con_real10.14) 0

# Display images for contrast_real 11
set fmri(conpic_real.11) 1

# Title for contrast_real 11
set fmri(conname_real.11) "neg_MET"

# Real contrast_real vector 11 element 1
set fmri(con_real11.1) 0

# Real contrast_real vector 11 element 2
set fmri(con_real11.2) 0

# Real contrast_real vector 11 element 3
set fmri(con_real11.3) 0

# Real contrast_real vector 11 element 4
set fmri(con_real11.4) 0

# Real contrast_real vector 11 element 5
set fmri(con_real11.5) -1.0

# Real contrast_real vector 11 element 6
set fmri(con_real11.6) 0

# Real contrast_real vector 11 element 7
set fmri(con_real11.7) -1.0

# Real contrast_real vector 11 element 8
set fmri(con_real11.8) 0

# Real contrast_real vector 11 element 9
set fmri(con_real11.9) 1.0

# Real contrast_real vector 11 element 10
set fmri(con_real11.10) 0

# Real contrast_real vector 11 element 11
set fmri(con_real11.11) 1.0

# Real contrast_real vector 11 element 12
set fmri(con_real11.12) 0

# Real contrast_real vector 11 element 13
set fmri(con_real11.13) 0

# Real contrast_real vector 11 element 14
set fmri(con_real11.14) 0

# Display images for contrast_real 12
set fmri(conpic_real.12) 1

# Title for contrast_real 12
set fmri(conname_real.12) "int_pos"

# Real contrast_real vector 12 element 1
set fmri(con_real12.1) 0

# Real contrast_real vector 12 element 2
set fmri(con_real12.2) 0

# Real contrast_real vector 12 element 3
set fmri(con_real12.3) 0

# Real contrast_real vector 12 element 4
set fmri(con_real12.4) 0

# Real contrast_real vector 12 element 5
set fmri(con_real12.5) -1.0

# Real contrast_real vector 12 element 6
set fmri(con_real12.6) 0

# Real contrast_real vector 12 element 7
set fmri(con_real12.7) 1.0

# Real contrast_real vector 12 element 8
set fmri(con_real12.8) 0

# Real contrast_real vector 12 element 9
set fmri(con_real12.9) 1.0

# Real contrast_real vector 12 element 10
set fmri(con_real12.10) 0

# Real contrast_real vector 12 element 11
set fmri(con_real12.11) -1.0

# Real contrast_real vector 12 element 12
set fmri(con_real12.12) 0

# Real contrast_real vector 12 element 13
set fmri(con_real12.13) 0

# Real contrast_real vector 12 element 14
set fmri(con_real12.14) 0

# Display images for contrast_real 13
set fmri(conpic_real.13) 1

# Title for contrast_real 13
set fmri(conname_real.13) "int_neg"

# Real contrast_real vector 13 element 1
set fmri(con_real13.1) 0

# Real contrast_real vector 13 element 2
set fmri(con_real13.2) 0

# Real contrast_real vector 13 element 3
set fmri(con_real13.3) 0

# Real contrast_real vector 13 element 4
set fmri(con_real13.4) 0

# Real contrast_real vector 13 element 5
set fmri(con_real13.5) 1.0

# Real contrast_real vector 13 element 6
set fmri(con_real13.6) 0

# Real contrast_real vector 13 element 7
set fmri(con_real13.7) -1.0

# Real contrast_real vector 13 element 8
set fmri(con_real13.8) 0

# Real contrast_real vector 13 element 9
set fmri(con_real13.9) -1.0

# Real contrast_real vector 13 element 10
set fmri(con_real13.10) 0

# Real contrast_real vector 13 element 11
set fmri(con_real13.11) 1.0

# Real contrast_real vector 13 element 12
set fmri(con_real13.12) 0

# Real contrast_real vector 13 element 13
set fmri(con_real13.13) 0

# Real contrast_real vector 13 element 14
set fmri(con_real13.14) 0

# Display images for contrast_orig 1
set fmri(conpic_orig.1) 1

# Title for contrast_orig 1
set fmri(conname_orig.1) "watch5s"

# Real contrast_orig vector 1 element 1
set fmri(con_orig1.1) 1

# Real contrast_orig vector 1 element 2
set fmri(con_orig1.2) 0

# Real contrast_orig vector 1 element 3
set fmri(con_orig1.3) 0

# Real contrast_orig vector 1 element 4
set fmri(con_orig1.4) 0

# Real contrast_orig vector 1 element 5
set fmri(con_orig1.5) 0

# Real contrast_orig vector 1 element 6
set fmri(con_orig1.6) 0

# Real contrast_orig vector 1 element 7
set fmri(con_orig1.7) 0

# Display images for contrast_orig 2
set fmri(conpic_orig.2) 1

# Title for contrast_orig 2
set fmri(conname_orig.2) "control"

# Real contrast_orig vector 2 element 1
set fmri(con_orig2.1) 0

# Real contrast_orig vector 2 element 2
set fmri(con_orig2.2) 1.0

# Real contrast_orig vector 2 element 3
set fmri(con_orig2.3) 0

# Real contrast_orig vector 2 element 4
set fmri(con_orig2.4) 0

# Real contrast_orig vector 2 element 5
set fmri(con_orig2.5) 0

# Real contrast_orig vector 2 element 6
set fmri(con_orig2.6) 0

# Real contrast_orig vector 2 element 7
set fmri(con_orig2.7) 0

# Display images for contrast_orig 3
set fmri(conpic_orig.3) 1

# Title for contrast_orig 3
set fmri(conname_orig.3) "easyhigh"

# Real contrast_orig vector 3 element 1
set fmri(con_orig3.1) 0

# Real contrast_orig vector 3 element 2
set fmri(con_orig3.2) 0

# Real contrast_orig vector 3 element 3
set fmri(con_orig3.3) 1.0

# Real contrast_orig vector 3 element 4
set fmri(con_orig3.4) 0

# Real contrast_orig vector 3 element 5
set fmri(con_orig3.5) 0

# Real contrast_orig vector 3 element 6
set fmri(con_orig3.6) 0

# Real contrast_orig vector 3 element 7
set fmri(con_orig3.7) 0

# Display images for contrast_orig 4
set fmri(conpic_orig.4) 1

# Title for contrast_orig 4
set fmri(conname_orig.4) "hardhigh"

# Real contrast_orig vector 4 element 1
set fmri(con_orig4.1) 0

# Real contrast_orig vector 4 element 2
set fmri(con_orig4.2) 0

# Real contrast_orig vector 4 element 3
set fmri(con_orig4.3) 0

# Real contrast_orig vector 4 element 4
set fmri(con_orig4.4) 1.0

# Real contrast_orig vector 4 element 5
set fmri(con_orig4.5) 0

# Real contrast_orig vector 4 element 6
set fmri(con_orig4.6) 0

# Real contrast_orig vector 4 element 7
set fmri(con_orig4.7) 0

# Display images for contrast_orig 5
set fmri(conpic_orig.5) 1

# Title for contrast_orig 5
set fmri(conname_orig.5) "easylow"

# Real contrast_orig vector 5 element 1
set fmri(con_orig5.1) 0

# Real contrast_orig vector 5 element 2
set fmri(con_orig5.2) 0

# Real contrast_orig vector 5 element 3
set fmri(con_orig5.3) 0

# Real contrast_orig vector 5 element 4
set fmri(con_orig5.4) 0

# Real contrast_orig vector 5 element 5
set fmri(con_orig5.5) 1.0

# Real contrast_orig vector 5 element 6
set fmri(con_orig5.6) 0

# Real contrast_orig vector 5 element 7
set fmri(con_orig5.7) 0

# Display images for contrast_orig 6
set fmri(conpic_orig.6) 1

# Title for contrast_orig 6
set fmri(conname_orig.6) "hardlow"

# Real contrast_orig vector 6 element 1
set fmri(con_orig6.1) 0

# Real contrast_orig vector 6 element 2
set fmri(con_orig6.2) 0

# Real contrast_orig vector 6 element 3
set fmri(con_orig6.3) 0

# Real contrast_orig vector 6 element 4
set fmri(con_orig6.4) 0

# Real contrast_orig vector 6 element 5
set fmri(con_orig6.5) 0

# Real contrast_orig vector 6 element 6
set fmri(con_orig6.6) 1.0

# Real contrast_orig vector 6 element 7
set fmri(con_orig6.7) 0

# Display images for contrast_orig 7
set fmri(conpic_orig.7) 1

# Title for contrast_orig 7
set fmri(conname_orig.7) "NRS"

# Real contrast_orig vector 7 element 1
set fmri(con_orig7.1) 0

# Real contrast_orig vector 7 element 2
set fmri(con_orig7.2) 0

# Real contrast_orig vector 7 element 3
set fmri(con_orig7.3) 0

# Real contrast_orig vector 7 element 4
set fmri(con_orig7.4) 0

# Real contrast_orig vector 7 element 5
set fmri(con_orig7.5) 0

# Real contrast_orig vector 7 element 6
set fmri(con_orig7.6) 0

# Real contrast_orig vector 7 element 7
set fmri(con_orig7.7) 1.0

# Display images for contrast_orig 8
set fmri(conpic_orig.8) 1

# Title for contrast_orig 8
set fmri(conname_orig.8) "ME_distract"

# Real contrast_orig vector 8 element 1
set fmri(con_orig8.1) 0

# Real contrast_orig vector 8 element 2
set fmri(con_orig8.2) 0.0

# Real contrast_orig vector 8 element 3
set fmri(con_orig8.3) -1.0

# Real contrast_orig vector 8 element 4
set fmri(con_orig8.4) 1.0

# Real contrast_orig vector 8 element 5
set fmri(con_orig8.5) -1.0

# Real contrast_orig vector 8 element 6
set fmri(con_orig8.6) 1.0

# Real contrast_orig vector 8 element 7
set fmri(con_orig8.7) 0

# Display images for contrast_orig 9
set fmri(conpic_orig.9) 1

# Title for contrast_orig 9
set fmri(conname_orig.9) "ME_temp"

# Real contrast_orig vector 9 element 1
set fmri(con_orig9.1) 0

# Real contrast_orig vector 9 element 2
set fmri(con_orig9.2) 0

# Real contrast_orig vector 9 element 3
set fmri(con_orig9.3) 1.0

# Real contrast_orig vector 9 element 4
set fmri(con_orig9.4) 1.0

# Real contrast_orig vector 9 element 5
set fmri(con_orig9.5) -1.0

# Real contrast_orig vector 9 element 6
set fmri(con_orig9.6) -1.0

# Real contrast_orig vector 9 element 7
set fmri(con_orig9.7) 0

# Display images for contrast_orig 10
set fmri(conpic_orig.10) 1

# Title for contrast_orig 10
set fmri(conname_orig.10) "neg_MED"

# Real contrast_orig vector 10 element 1
set fmri(con_orig10.1) 0

# Real contrast_orig vector 10 element 2
set fmri(con_orig10.2) 0

# Real contrast_orig vector 10 element 3
set fmri(con_orig10.3) 1.0

# Real contrast_orig vector 10 element 4
set fmri(con_orig10.4) -1.0

# Real contrast_orig vector 10 element 5
set fmri(con_orig10.5) 1.0

# Real contrast_orig vector 10 element 6
set fmri(con_orig10.6) -1.0

# Real contrast_orig vector 10 element 7
set fmri(con_orig10.7) 0

# Display images for contrast_orig 11
set fmri(conpic_orig.11) 1

# Title for contrast_orig 11
set fmri(conname_orig.11) "neg_MET"

# Real contrast_orig vector 11 element 1
set fmri(con_orig11.1) 0

# Real contrast_orig vector 11 element 2
set fmri(con_orig11.2) 0

# Real contrast_orig vector 11 element 3
set fmri(con_orig11.3) -1.0

# Real contrast_orig vector 11 element 4
set fmri(con_orig11.4) -1.0

# Real contrast_orig vector 11 element 5
set fmri(con_orig11.5) 1.0

# Real contrast_orig vector 11 element 6
set fmri(con_orig11.6) 1.0

# Real contrast_orig vector 11 element 7
set fmri(con_orig11.7) 0

# Display images for contrast_orig 12
set fmri(conpic_orig.12) 1

# Title for contrast_orig 12
set fmri(conname_orig.12) "int_pos"

# Real contrast_orig vector 12 element 1
set fmri(con_orig12.1) 0

# Real contrast_orig vector 12 element 2
set fmri(con_orig12.2) 0

# Real contrast_orig vector 12 element 3
set fmri(con_orig12.3) -1.0

# Real contrast_orig vector 12 element 4
set fmri(con_orig12.4) 1.0

# Real contrast_orig vector 12 element 5
set fmri(con_orig12.5) 1.0

# Real contrast_orig vector 12 element 6
set fmri(con_orig12.6) -1.0

# Real contrast_orig vector 12 element 7
set fmri(con_orig12.7) 0

# Display images for contrast_orig 13
set fmri(conpic_orig.13) 1

# Title for contrast_orig 13
set fmri(conname_orig.13) "int_neg"

# Real contrast_orig vector 13 element 1
set fmri(con_orig13.1) 0

# Real contrast_orig vector 13 element 2
set fmri(con_orig13.2) 0

# Real contrast_orig vector 13 element 3
set fmri(con_orig13.3) 1.0

# Real contrast_orig vector 13 element 4
set fmri(con_orig13.4) -1.0

# Real contrast_orig vector 13 element 5
set fmri(con_orig13.5) -1.0

# Real contrast_orig vector 13 element 6
set fmri(con_orig13.6) 1.0

# Real contrast_orig vector 13 element 7
set fmri(con_orig13.7) 0

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

'  > first_level.fsf;
$FSLDIR/bin/feat first_level.fsf
rm first_level.fsf;
done
);
