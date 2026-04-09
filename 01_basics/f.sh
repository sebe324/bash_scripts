#!/bin/bash

read FIBO

A=$(echo "$FIBO" | rev | cut -d':' -f1 | rev)
B=$(echo "$FIBO" | rev | cut -d':' -f2 | rev)

RESULT=$((A+B))

echo "$FIBO:$RESULT"
exit 0