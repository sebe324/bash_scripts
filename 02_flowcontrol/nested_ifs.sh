#!/bin/bash

read number

if [ $number -gt 10 ]; then
    if [ $number -gt 100 ]; then
        echo "The number is > 100"
    else
        echo "The number is between [11 and 100]"
    fi
else
    echo "The number is <= 10"
fi