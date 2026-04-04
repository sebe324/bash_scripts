#!/bin/bash

# this program is kinda overengineered but whatever. Dec -> Bin -> Hex
# 1. Convert decimal to binary
# 2. Add missing zeroes to the beginning of the binary so that the lenght is divisible by 4
# 3. Split binary code to segments of length 4
# 4. Convert the 4 segments back to decimal or to corresponding letters and append to result
# 5. Print result
read input
binary=""

# convert to binary
while [ ! $input -eq 0 ]; do
    rest=$[$input%2]
    input=$[$input/2]
    binary="${rest}${binary}"
done

# # convert to hex
hexadecimal=""

# Fill zeros so that the number of zeroes and ones is divisible by 4

length=$[$(echo $binary | wc -c)-1]
zero_count=$[4 - $length % 4]
if [ $zero_count -lt 4 ]; then
    echo $binary
    echo $length
    echo $zero_count
    i=0
    for i in $(seq 1 $zero_count); do
        binary="0${binary}"
    done
fi

# Count added zeros

length=$[$(echo $binary | wc -c)-1]
hmm=$[$length/4]
i=0
((length--))
while [ $i -lt $hmm ]; do
    startpos=$[$i*4+1]
    endpos=$[startpos+3]
    # echo "STARTING POS $startpos"
    abc=$(echo $binary | cut -c $startpos-$endpos)
    echo $abc
    value=0
    for j in {1..4}; do
    # value=$[$value+$(expr substr $abc $j 1)]
    bit=$(expr substr $abc $j 1)
    value=$[$value+$[$bit * 2**$[4-$j]]]
    ((length--))
    done
    echo "VALUE $value"
    if [ $value -lt 10 ]; then
    hexadecimal="$hexadecimal$value"
    elif [ $value -eq 10 ]; then
        hexadecimal="${hexadecimal}A"
    elif [ $value -eq 11 ]; then
        hexadecimal="${hexadecimal}B"
    elif [ $value -eq 12 ]; then
        hexadecimal="${hexadecimal}C"
    elif [ $value -eq 13 ]; then
        hexadecimal="${hexadecimal}D"
    elif [ $value -eq 14 ]; then
        hexadecimal="${hexadecimal}E"
    elif [ $value -eq 15 ]; then
        hexadecimal="${hexadecimal}F"
    fi

    ((i++))
done
echo $binary
echo $hmm

echo "RESULT $hexadecimal"
