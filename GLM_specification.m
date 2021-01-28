%-----------------------------------------------------------------------
% Job saved on 31-Oct-2018 16:24:36 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (12.4)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
%%% Script used to generate SPM.mat %%%

subjects = { 'P05', 'P01', 'P10', 'P19', 'P16', 'P08', 'P09',  'P14', 'P15', 'P17', 'P03', 'P04', 'P06', 'P12', 'P13', 'P18', 'P20', 'P22', '002', '004', '005', '007', '008', '009', '012', '013', '015', '016', '017', '018', '019', '021', '022', '024', '025', '026', '027', 'FM21', 'FM22', 'FM23', 'FM24', 'FM25', 'FM26', 'FM27', 'FM28', 'FM29', 'FM30', 'FM31', 'FM32', 'FM33', 'FM34', 'FM35', 'FM36', 'FM37', 'FM38', 'FM39', 'FM40'};

datapath = '/home/vo16427/Desktop/Data_for_DCM/';
for s = 1:length(subjects)
    
    subject = subjects{s} ;
    cd (datapath);
    cd (subject);
    cd ('GLM');
    load('Etask.mat'); % the first column of these structures contains the onsets
    load('Htask.mat');
    load('Htemp.mat');
    load('Ltemp.mat');
    ts = load('../time_series/VOI_MED_PAG_1.mat'); %load a time series just to get the timepoints
    
matlabbatch{1}.spm.stats.fmri_design.dir = {['/home/vo16427/Desktop/Data_for_DCM/' subject '/GLM']};
matlabbatch{1}.spm.stats.fmri_design.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_design.timing.RT = 3;
matlabbatch{1}.spm.stats.fmri_design.timing.fmri_t = 16;
matlabbatch{1}.spm.stats.fmri_design.timing.fmri_t0 = 8;
matlabbatch{1}.spm.stats.fmri_design.sess.nscan = length(ts.Y);
matlabbatch{1}.spm.stats.fmri_design.sess.cond(1).name = 'Etask';
matlabbatch{1}.spm.stats.fmri_design.sess.cond(1).onset = Etask(:, 1);
matlabbatch{1}.spm.stats.fmri_design.sess.cond(1).duration = 30;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_design.sess.cond(1).orth = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(2).name = 'Ltemp';
matlabbatch{1}.spm.stats.fmri_design.sess.cond(2).onset = Ltemp(:, 1);
matlabbatch{1}.spm.stats.fmri_design.sess.cond(2).duration = 30;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_design.sess.cond(2).orth = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(3).name = 'Htask';
matlabbatch{1}.spm.stats.fmri_design.sess.cond(3).onset = Htask(:, 1);
matlabbatch{1}.spm.stats.fmri_design.sess.cond(3).duration = 30;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_design.sess.cond(3).orth = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(4).name = 'Htemp';

matlabbatch{1}.spm.stats.fmri_design.sess.cond(4).onset = Htemp(:, 1);
%%
matlabbatch{1}.spm.stats.fmri_design.sess.cond(4).duration = 30;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_design.sess.cond(4).orth = 0;
matlabbatch{1}.spm.stats.fmri_design.sess.multi = {''};
matlabbatch{1}.spm.stats.fmri_design.sess.regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_design.sess.multi_reg = {''};
matlabbatch{1}.spm.stats.fmri_design.sess.hpf = 90;
matlabbatch{1}.spm.stats.fmri_design.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_design.bases.hrf.derivs = [0 0];
matlabbatch{1}.spm.stats.fmri_design.volt = 1;
matlabbatch{1}.spm.stats.fmri_design.global = 'None';
matlabbatch{1}.spm.stats.fmri_design.mthresh = 0.8;
matlabbatch{1}.spm.stats.fmri_design.cvi = 'AR(1)';

spm('defaults', 'FMRI');
spm_jobman('run',matlabbatch);
end
