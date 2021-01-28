% % Specify PEB model settings (see batch editor for help on each setting)

 M = struct();
 M.alpha = 1;
 M.beta  = 16;
 M.hE    = 0;
 M.hC    = 1/16;
 M.Q     = 'single';
% 
% % Specify design matrix for N subjects. It should start with a constant column
% % I created two columns (both of the length of the number of subj). The first one is the group mean, the second one
% % is modified to model presence/absence of analgesic effect.


 M.X = ones(20,2);
 M.X( 1,2) = -1;
 M.X( 3,2) = -1;
 M.X( 5,2) = -1;
 M.X( 8,2) = -1;
 M.X( 9,2) = -1;
 M.X(17,2) = -1;
% 
% % Choose field - best to choose one at the time

field = {'B'};

% %field = {'A','B'};
% %field  ='all';
% field = {'C'};

% % Estimate model

PEB = spm_dcm_peb(GCM,M,field);

save('PEB_name.mat','PEB');
 
% % Search over nested PEB models.

BMA = spm_dcm_peb_bmc(PEB);

spm_dcm_peb_review(BMA,GCM);
