#!/bin/bash -x

arr=( 5 5 -10 )
echo ${arr[@]}
sum=0

for i in ${arr[@]}
do
	sum=`expr $sum + $i`
done

echo $sum
