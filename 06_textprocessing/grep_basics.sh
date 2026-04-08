#!/bin/bash

# Search for lines containing Kubernetes
grep "Kubernetes" "../mockdata/20220301-log.txt" | wc -l

# Ignore case

grep -i "kubernetes" "../mockdata/20220301-log.txt" | wc -l

# Find lines that do not have kubernetes

grep -v "Kubernetes" "../mockdata/20220301-log.txt" | wc -l

# Search trough all files

grep -r "Kubernetes" "../mockdata" | wc -l

# Find logs from hour 22 to 23
grep -E '^2[2-3]' "../mockdata/20220301-log.txt"

echo ""

# Find logs from the 59th minute
grep -E '^([01][0-9]|2[0-3]):59:[0-9]{2}' "../mockdata/20220301-log.txt"

# Find logs from the morning that contain the keyword HTTP

grep -E '^(0[0-9]|1[0-1]).*HTTP' "../mockdata/20220301-log.txt" | wc -l

# Find files from the 10th day of the month

ls -l "../mockdata" | grep -E "202[2-5]0(2|3)10"

# Find files between the 10th day and the 20th day of the month

ls -l "../mockdata" | grep -E "202[2-5]0(2|3)(1[0-9]|20)"

