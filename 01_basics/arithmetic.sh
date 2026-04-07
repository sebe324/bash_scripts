#!/bin/bash

a=7
b=5

echo $((++a))
echo $((a++))
echo $((!a))
echo $((~a))
echo $((-a))
echo $((+a))
echo $((a**b))
echo $((a<<b))
echo $((a>>b))
echo $((a<=b))
echo $((a>=b))

c=$((2#10001))
d=$((2#10111))
echo $((c&d))
echo $((c|d))

# regex

line="aab"
[[ $line =~ [[:space:]]*(a)?b ]]
echo $?

line="xy"
[[ $line =~ [[:space:]]*(a)?b ]]
echo $?

line="xaby"
[[ $line =~ [[:space:]]*(a)?b ]]
echo $?

line="hello"
[[ $line =~ ^"hello" ]]
echo $?
