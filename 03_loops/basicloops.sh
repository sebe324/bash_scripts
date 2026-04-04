#!/bin/bash

read count

# for i in {0..5}; do
for i in $(seq -f "%02g" 0 $count); do
    echo "Hello for $i"
done

i=0
while [ $i -le $count ]; do
    echo "Hello while $i"
    ((i++))
done

i=0
until [ $i -gt $count ]; do
    echo "Hello until $i"
    ((i++))
done
