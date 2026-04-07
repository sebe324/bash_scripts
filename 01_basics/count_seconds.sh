#!/bin/bash

# Count seconds from year 0 to the beginning of current day (assuming on average a month is 30 days long)

CURRENT_YEAR=$(date +%Y)
CURRENT_MONTH=$(date +%m)
CURRENT_DAY=$(date +%d)

echo "Today it is $CURRENT_YEAR $CURRENT_MONTH $CURRENT_DAY"

YEAR_SECONDS=$((CURRENT_YEAR*3600*24*30*12))
MONTH_SECONDS=$(($((CURRENT_MONTH-1))*3600*24*30))
DAY_SECONDS=$(($((CURRENT_DAY-1))*3600*24))
RESULT=$((YEAR_SECONDS+DAY_SECONDS+MONTH_SECONDS))
echo "Seconds from the year 0: $RESULT"

