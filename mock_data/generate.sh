#!/bin/bash

touch {20220301..20220331}-log.txt
touch {20250201..20250228}-log.txt

example_messages=("HTTP request 200" "HTTP request 404" "HTTP request 500" "User logged in" "User logged out" "Kubernetes cluster failed" "Kubernetes cluster started")
example_length=${#example_messages[@]}

for filename in *.txt; do
    echo -n "" > $filename
    for i in {1..100}; do
        hour=$((RANDOM % 24))
        minute=$((RANDOM % 60))
        second=$((RANDOM % 60))
        random_msg=${example_messages[$RANDOM % $example_length]}
        echo $filename $i $random_msg
        printf "%02d:%02d:%02d - %s\n" $hour $minute $second "$random_msg" >> $filename
    done 
done
