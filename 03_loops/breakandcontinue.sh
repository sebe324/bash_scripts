#!/bin/bash

for i in {1..5}; do
    echo "Hello this is $i"

    if [ $i -eq 4 ]; then
        break
    else
        continue
    fi

done 