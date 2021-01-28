%-----------------------------------------------------------------------
% Job saved on 01-Nov-2018 10:17:07 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (12.4)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
subjects = { 'P05', 'P01', 'P10', 'P19', 'P16', 'P08', 'P09',  'P14', 'P15', 'P17', 'P03', 'P04', 'P06', 'P12', 'P13', 'P18', 'P20', 'P22', '002', '004', '005', '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021', '022', '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40'};



datapath = '/home/vo16427/Desktop/Data_for_DCM/';
dcm_file = '/home/vo16427/Desktop/Data_for_DCM/Templates/DCM_TD_BU.mat'; %template DCM created from GUI. In this example I am specifying a model where the ACC-PAG-RVM connections are top-down and the ACC-LC connection is bottom-up.
for s = 1:length(subjects)
    
    subject = subjects{s} ;
    cd (datapath);
    cd (subject);
    cd 'DCM';
    copyfile(dcm_file);

matlabbatch{1}.spm.dcm.spec.fmri.regions.dcmmat = {['/home/vo16427/Desktop/Data_for_DCM/' subject '/DCM/DCM_LCconn_TD_BU.mat']};
matlabbatch{1}.spm.dcm.spec.fmri.regions.voimat = {
            
                                                   ['/home/vo16427/Desktop/Data_for_DCM/' subject '/time_series/VOI_MED_ACC_1.mat']
                                                   ['/home/vo16427/Desktop/Data_for_DCM/' subject '/time_series/VOI_MED_PAG_1.mat']
                                                   ['/home/vo16427/Desktop/Data_for_DCM/' subject '/time_series/VOI_MED_rLC_1.mat']
                                                   ['/home/vo16427/Desktop/Data_for_DCM/' subject '/time_series/VOI_MET_RVM_1.mat']
                                                   };
matlabbatch{2}.spm.dcm.spec.fmri.inputs.dcmmat = {['/home/vo16427/Desktop/Data_for_DCM/' subject '/DCM/DCM_TD_BU.mat']};
matlabbatch{2}.spm.dcm.spec.fmri.inputs.spmmat = {['/home/vo16427/Desktop/Data_for_DCM/' subject '/GLM/SPM.mat']};
matlabbatch{2}.spm.dcm.spec.fmri.inputs.session = 1;
matlabbatch{2}.spm.dcm.spec.fmri.inputs.val = {
                                               1
                                               1
                                               1
                                               1
                                               }';
 spm('defaults', 'FMRI');
spm_jobman('run',matlabbatch);                                          
end
