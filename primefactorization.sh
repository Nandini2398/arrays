#!/bin/bash -x

read -p "Enter The Number:" n

count=0
num=$n
for ((i=2; i<=$n; i++))
do
	while [ $(($n%$i)) -eq 0 ]
	do
	arr[count++]=$i
	n=$(($n/$i))
	done
done

echo "Factors Of Number $num are:" ${arr[@]}

