#!/bin/bash

# Run randomise for all masks with 3mm variance smoothing and 10000 permutations

echo -n "Seed region?"
read region
echo -n "Input folder?"
read folder
echo -n "Output folder?"
read output

cd ${folder}
outpath=~/Data/${region}_seed/${output}
for j in cope10 cope8 cope12; do ## cope8 is PPI main effect of task, cope10 is PPI main effect of temp, cope12 is PPI task * temp interaction
  inpath=${folder}/${j}.feat ;
  maskpath=/home/vo16427/GROUPMASKS ;
  echo $inpath ; 
  for k in $maskpath/*.nii.gz
    do 
    mask=$(basename $k .nii.gz) 
    echo "Working on mask ${mask}"
    $FSLDIR/bin/randomise_parallel -i $inpath/filtered_func_data -o $outpath/$j/$mask -m $k -1 -T -x -n 10000 -v 3; 
    done  
done
