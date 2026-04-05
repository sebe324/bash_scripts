#!/bin/bash

read -a array

length=${#array[@]}
for i in $(seq 0 $[length-2]); do
    for j in $(seq 0 $[length-i-2]); do
        if [ ${array[$j]} -gt ${array[$[j+1]]} ]; then
            temp=${array[$j]}
            array[$j]=${array[$[j+1]]}
            array[$[j+1]]=$temp
        fi
    done
done

for i in $(seq 0 $[length-1]); do
    echo -n "${array[$i]} "
done

echo ""
