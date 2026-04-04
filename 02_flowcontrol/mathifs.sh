#!/bin/bash

read A
read B

if [ $A -gt $B ]; then
echo "$A is greater than $B"
else
echo "$A is smaller than or equal to $B"
fi

if [ $A -lt 0 ]; then
echo "$A is negative"
elif [ $A -gt 0 ]; then
echo "$A is positive"
else
echo "$A is 0"
fi

if [ $B -lt 0 ]; then
echo "$B is negative"
elif [ $B -gt 0 ]; then
echo "$B is positive"
else
echo "$B is 0"
fi