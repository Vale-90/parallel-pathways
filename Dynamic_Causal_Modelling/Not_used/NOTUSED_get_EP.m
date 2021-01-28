subjects = {'002', '004', '005' '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021', '022', '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40', 'P01', 'P05', 'P08', 'P09', 'P10',  'P14', 'P15', 'P17', 'P19', 'P03', 'P04', 'P06', 'P12', 'P13', 'P16', 'P18', 'P20', 'P22'};

% -------------------------------------------------------------------------



 for s = 1:length(subjects)
     subject = subjects{s} ; 
    
     cd /home/vo16427/Desktop/Data_for_DCM;
     cd (subject); 
     cd DCM
     load DCM_2ver_TD_BU.mat


     Etask2ACC(s, 1) = DCM.Ep.C(1, 1);
     Ltemp2RVM(s, 1) = DCM.Ep.C(4, 2);
     Htask2ACC(s, 1) = DCM.Ep.C(1, 3);
     Htemp2RVM(s, 1) = DCM.Ep.C(4, 4);
     
     
     ACC2PAG(s, 1) = DCM.Ep.A(2, 1);
     ACC2LC(s, 1) = DCM.Ep.A(3, 1);
     PAG2ACC(s, 1) = DCM.Ep.A(1, 2);
     PAG2RVM(s, 1) = DCM.Ep.A(4, 2);
     LC2ACC(s, 1) = DCM.Ep.A(3, 1);
     RVM2PAG(s, 1) = DCM.Ep.A(2, 4);
     
     
     
     
     ACC2PAG_task(s, 1) = DCM.Ep.B(2, 1, 3);
     %ACC2PAG_task = ACC2PAG + ACC2PAG_task;
     ACC2LC_task(s, 1) = DCM.Ep.B(3, 1, 3);
     %ACC2LC_task = ACC2LC_task + ACC2LC;
     PAG2ACC_task(s, 1) = DCM.Ep.B(1, 2, 3);
    % PAG2ACC_task = PAG2ACC_task + PAG2ACC;
     PAG2RVM_task(s, 1) = DCM.Ep.B(4, 2, 3);
    % PAG2RVM_task= PAG2RVM_task + PAG2RVM;
     LC2ACC_task(s, 1) = DCM.Ep.B(1, 3, 3);
    % LC2ACC_task = LC2ACC_task + LC2ACC;
     RVM2PAG_task(s, 1) = DCM.Ep.B(2, 4, 3);
    % RVM2PAG_task = RVM2PAG_task + RVM2PAG;
     
     ACC2LC_temp(s, 1) = DCM.Ep.B(3, 1, 4);
     %ACC2LC_temp = ACC2LC_temp + ACC2LC;
     PAG2RVM_temp(s, 1) = DCM.Ep.B(4, 2, 4);
    % PAG2RVM_temp = PAG2RVM_temp + PAG2RVM;
     LC2ACC_temp(s, 1) = DCM.Ep.B(1, 3, 4);
    % LC2ACC_temp = LC2ACC_temp + LC2ACC;
     RVM2PAG_temp(s, 1)= DCM.Ep.B(2, 4, 4);
    % RVM2PAG_temp= RVM2PAG_temp + RVM2PAG;
     
     
 
     clear DCM
 end
