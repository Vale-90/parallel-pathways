#!/bin/bash
# Script used to warp masks from standard MNI space back to subject space

basepath=/home/vo16427/Data
maskpath=/home/vo16427/GROUPMASKS

( cd $basepath ;
for i in 0?? ; do

	outpath=$basepath/${i}
	datapath=$basepath/${i}/tests/all_corrections_no_ST_fsl5.feat
	regpath=$datapath/reg
	echo 'working on='${i}

	for m in $maskpath/fsl5_* ; do
		mask=$(basename $m .nii.gz)
		echo 'working on='${mask}' mask'
		fsl_sub $FSLDIR/bin/applywarp -i $m -o /home/vo16427/Data/$i/${mask}for${i}_all_nostc -r $regpath/example_func -w $regpath/standard2highres_warp.nii.gz --postmat=$regpath/highres2example_func.mat --interp=nn ;
		
	done
done
);
