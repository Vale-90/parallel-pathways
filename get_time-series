%% Copy the time-series extracted with FSL into an SPM structure %%

% IMPORTANT: first you need to load a dummy VOI structure %%


subjects = {'P05', 'P08', 'P09', 'P10', 'P14', 'P15', 'P17', 'P19', 'P01', 'P03', 'P04', 'P06', 'P12', 'P13', 'P16', 'P18', 'P20', 'P22'};


for s = 1:length(subjects) 
    subject = subjects{s};
    
    cd /home/vo16427/Desktop/Data_for_DCM;
    cd (subject);
    cd time_series;    
    
     LCload = ['/home/vo16427/Data_LH/', subject, '/fsl5_LC_MED_right_zstat9_all_nostc.txt'];    
   
     RVMload = ['/home/vo16427/Data_LH/', subject, '/fsl5_RVM_MET_zstat8_all_nostc.txt']; 
     PAGload = ['/home/vo16427/Data_LH/', subject, '/fsl5_PAG_MED_zstat9_all_nostc.txt'];
     ACCload = ['/home/vo16427/Data_LH/', subject, '/fsl5_ACC_MED_zstat9_all_nostc.txt'];
     
     RVM = load(RVMload);
     Y = RVM(:, 1);
     xY.u = RVM(:, 1);
     xY.name = 'MET_RVM';
     save('VOI_MET_RVM_1', 'xY', 'Y'); 
     
     PAG = load(PAGload);
     Y = PAG(:, 1);
     xY.u = PAG(:, 1);
     xY.name = 'MED_PAG';
     save('VOI_MED_PAG_1', 'xY', 'Y');
% %     
     
     ACC = load(ACCload);
     Y = ACC(:, 1);
     xY.u = ACC(:, 1);
     xY.name = 'MED_ACC';
     save('VOI_MED_ACC_1', 'xY', 'Y');   
    
     LC = load(LCload);
     Y = LC(:, 1);
     xY.u = LC(:, 1);
     xY.name = 'rLC';
     save('VOI_MED_rLC_1', 'xY', 'Y') ; 
%     
end
