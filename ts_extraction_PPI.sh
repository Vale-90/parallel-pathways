#!/bin/bash
echo -n "Region? Input name of mask"
read region

echo -n "Which zstat? Input number: 8 is main effect of distraction, 9 is main effect of temperature "
read contrast


basepath=/home/vo16427/Data

cd $basepath ;

for i in 0?? ; do

cd $basepath/$i

fslstats $basepath/$i/first_level_main_effects.feat/stats/zstat${contrast}.nii.gz -k /home/vo16427/Data/${i}/${region}for${i}_wf.nii.gz -x > /home/vo16427/Data/${i}/${region}_maxco.txt;

line=$(head -n 1 /home/vo16427/Data/${i}/${region}_maxco.txt)

echo "working on" ${i} 
#echo $line

fslmeants -i /home/vo16427/Data/$i/res_mean_nostc.nii.gz --eig -c ${line} -o /home/vo16427/Data/${i}/${region}_zstat${contrast}_wf.txt ;

rm /home/vo16427/Data/${i}/${region}_maxco.txt;

done ;
