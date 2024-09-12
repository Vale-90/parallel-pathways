%% Copy the time-series extracted with FSL into an SPM structure %%

% IMPORTANT: first you need to load a dummy VOI structure previously created via the DCM GUI %%


subject_names = { 'P05', 'P01', 'P10', 'P19', 'P16', 'P08', 'P09',  'P14', 'P15', 'P17', 'P03', 'P04', 'P06', 'P12', 'P13', 'P18', 'P20', 'P22', '002', '004', '005', '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021', '022', '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40'};

for s = 1:length(subjects) 
    subject = subjects{s};
    
    cd /home/vo16427/Desktop/Data_for_DCM;
    cd (subject);
    cd time_series;    
    
     LCload = ['/home/vo16427/Data_LH/', subject, '/LC_MED_right_zstat9_all_nostc.txt'];    
   
     RVMload = ['/home/vo16427/Data_LH/', subject, '/RVM_MET_zstat8_all_nostc.txt']; 
     PAGload = ['/home/vo16427/Data_LH/', subject, '/PAG_MED_zstat9_all_nostc.txt'];
     ACCload = ['/home/vo16427/Data_LH/', subject, '/ACC_MED_zstat9_all_nostc.txt'];
     
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
   
end
