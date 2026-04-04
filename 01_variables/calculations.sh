#!/bin/bash

A=20
B=10

echo "CALCULATOR"
echo "Using \$[A?B]"
echo "$A + $B = $[A+B]"
echo "$A - $B = $[A-B]"
echo "$A * $B = $[A*B]"
echo "$A / $B = $[A/B]"

echo "Using \$((A?B))"
echo "$A + $B = $((A+B))"
echo "$A - $B = $((A-B))"
echo "$A * $B = $((A*B))"
echo "$A / $B = $((A/B))"

echo "Using \$(expr $A ? $B)"
echo "$A + $B = $(expr $A + $B)"
echo "$A - $B = $(expr $A - $B)"
echo "$A * $B = $(expr $A \* $B)"
echo "$A / $B = $(expr $A / $B)"