#!/bin/bash

birds=("parrot" "pigeon" "crow" "penguin" "chicken" "ostrich")

length=${#birds[@]}
for i in $(seq 0 $[$length-1]); do
    echo "$i - ${birds[$i]}"
done 
echo "Please enter bird ID"
read id

echo "Bird with id $id - ${birds[$id]}"