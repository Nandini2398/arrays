#!/bin/bash -x

read -p "Enter The Number : " n

for (( i=1; i<=$n; i++ ))
do

	random=$(( RANDOM%400+600 ));
	arr[$i]=$random;

done

#echo ${arr[@]}

for (( i=1; i<=${#arr[@]}; i++ ))
do
	for (( j=$i+1; j<=${#arr[@]}; j++ ))
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
			temp=${arr[$i]}
			arr[i]=${arr[$j]}
			arr[j]=$temp
		fi
	done
done

for (( i=1; i<=$n; i++ ))
do
	echo ${arr[$i]}

done

echo " Second Largest : " ${arr[$i-2]}
echo " Second Smallest : " ${arr[2]}

