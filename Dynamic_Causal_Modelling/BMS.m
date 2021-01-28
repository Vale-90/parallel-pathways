%% Bayesian Model Selection

% Enter subject names here

subject_names = { 'P05', 'P01', 'P10', 'P19', 'P16', 'P08', 'P09',  'P14', 'P15', 'P17', 'P03', 'P04', 'P06', 'P12', 'P13', 'P18', 'P20', 'P22', '002', '004', '005', '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021', '022', '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40'};

%subject_names = { 'P05', 'P01', 'P10', 'P19', 'P16', 'P08', 'P09',  'P14', 'P15', 'P17', 'P03', 'P04', 'P06', 'P12', 'P13', 'P18', 'P20', 'P22', '002', '004', '005', '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021',  '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40'};




 %%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%

% Prefix for DCM filenames

prefix = '/home/vo16427/Desktop/Data_for_DCM/';

 

% BMS settings

matlabbatch = {};

matlabbatch{1}.spm.stats.bms.bms_dcm.dir = {'/home/vo16427/Desktop/Data_for_DCM/'};

matlabbatch{1}.spm.stats.bms.bms_dcm.model_sp = {''};

matlabbatch{1}.spm.stats.bms.bms_dcm.load_f = {''};

matlabbatch{1}.spm.stats.bms.bms_dcm.method = 'RFX';

matlabbatch{1}.spm.stats.bms.bms_dcm.family_level.family_file = {''};

matlabbatch{1}.spm.stats.bms.bms_dcm.bma.bma_yes.bma_famwin = 'famwin';

matlabbatch{1}.spm.stats.bms.bms_dcm.verify_id = 0; %%%%% set to 0 because when you specify DCMs from different computers this could be a problem

   

% Loop over subjects to build batch

for i = 1:length(subject_names)

   

    subject_name = subject_names{i};

   

    matlabbatch{1}.spm.stats.bms.bms_dcm.sess_dcm{i}.mod_dcm = {    
        
        
       
        [prefix subject_name '/DCM' '/DCM_4inp_notask' '.mat']
        [prefix subject_name '/DCM' '/DCM_4inp_bottomup' '.mat']
        [prefix subject_name '/DCM' '/DCM_4inp_topdown' '.mat']      
        [prefix subject_name '/DCM' '/DCM_4inp_TD_BU' '.mat']
        [prefix subject_name '/DCM' '/DCM_4inp_BU_TD' '.mat']             
        
    };

end

 

% Save the job

save('run_bms_job.mat', 'matlabbatch');

 

% Run the job

spm_jobman('run',matlabbatch);
