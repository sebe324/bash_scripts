#!/bin/bash

# Count seconds from 1970-01-01 assuming a month is 30 days long

# normal way
echo $(date +%s)

Y=$(date +%Y)
M=$(date +%m)
d=$(date +%d)

YS=$(($((Y-1970)) * 3600 * 24 * 30 * 12 ))
MS=$(($((M-1)) * 3600 * 24 * 30))
DS=$(($((D-1)) * 3600 * 24))

result=$((YS+MS+DS))
echo $result