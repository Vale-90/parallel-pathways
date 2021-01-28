%%% This script generates a GCM for use in PEB %%%

subjects = {'002', '004', '005', '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021', '022', '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40', 'P01', 'P03', 'P04', 'P05',  'P06', 'P08', 'P09', 'P10', 'P12', 'P13', 'P14', 'P15', 'P16', 'P17', 'P18', 'P19', 'P20', 'P22'};



for i = 1:length(subjects)
    
    
    
    subject = subjects{i};
     cd /home/vo16427/Desktop/Data_for_DCM
     cd (subject);
     cd DCM
     
     
     load DCM_full_rec_ACCRVM_PPI.mat
     GCM{i, 1} = DCM;
     clear DCM;
     
%      load DCM_2ver_bottomup.mat
%      GCM{i, 2} = DCM;
%      clear DCM
%      
%      load DCM_2ver_topdown.mat
%      GCM{i, 3} = DCM;
%      clear DCM;
%      
%      load DCM_2ver_TD_BU.mat
%      GCM{i, 4} = DCM;
%      clear DCM;
%      
%      load DCM_2ver_BU_TD.mat
%      GCM{i, 5} = DCM;
%      clear DCM;
 
      cd /home/vo16427/Desktop/Data_for_DCM
     

 
 %diagnostic(i) = GCM{i, 1}.diagnostics(1, 1); 
 
end

GCM = spm_dcm_fmri_check(GCM); % check the variance explained by DCM in each subject


%cd /home/vo16427/Desktop/Data_for_DCM;

%save('GCM_norec_PAGinp', 'GCM', '-v7.3');

% 
  for i = 1:length(subjects)
      subject = subjects{i};
      diagnostic(i) = GCM{i, 1}.diagnostics(1, 1); 
  end
% 
