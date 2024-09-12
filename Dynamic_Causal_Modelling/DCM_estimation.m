% Example matlab script used to estimate each DCM for each subject individually 

addpath(genpath('/panfs/panasas01/phph/vo16427/spm12')); clear DCM; load '~/Data_for_DCM/002/DCM/DCM_example'; spm_dcm_estimate(DCM);
