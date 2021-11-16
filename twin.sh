#!/bin/bash -x

for ((s=0; s<100; s++))
do
        range[$s]=$s
done

echo ${range[@]}

for ((s=1; s<${#range[@]}; s++))
do
        if [ $((range[s]%11)) -eq 0 ]
        then
        finalarr[$s]=$s
        fi
done

echo "Repeated Array Is:" ${finalarr[@]}
