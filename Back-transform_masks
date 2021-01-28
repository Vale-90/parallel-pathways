#!/bin/bash
basepath=/home/vo16427/Data_FM
maskpath=/home/vo16427/GROUPMASKS

( cd $basepath ;
for i in FM2? FM3? FM40 ; do

	outpath=$basepath/$i
	datapath=$basepath/$i/tests/all_corrections_no_ST_fsl5.feat
	regpath=$datapath/reg
	echo 'working on='$i

	for m in $maskpath/fsl5_* ; do
		mask=$(basename $m .nii.gz)
		echo 'working on='${mask}' mask'
		fsl_sub $FSLDIR/bin/applywarp -i $m -o /home/vo16427/Data_FM/$i/${mask}for${i}_all_nostc -r $regpath/example_func -w $regpath/standard2highres_warp.nii.gz --postmat=$regpath/highres2example_func.mat --interp=nn ;
		
	done
done
);
