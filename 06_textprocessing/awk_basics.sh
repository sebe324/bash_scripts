#!/bin/bash

# Print the first column

awk -F"," '{print $1}' ../mockdata/shop_data.csv

# Print the second column

awk -F"," '{print $2}' ../mockdata/shop_data.csv

# Assign a variable

awk -v var="Total Price:" -F"," '{print var, $5}' ../mockdata/shop_data.csv

# Get the cost per one item

awk -F"," 'NR > 1 {print $4 ":" $5 / $3}' ../mockdata/shop_data.csv

# Sum all the money

awk -F"," '{sum += $5} END {print sum}' ../mockdata/shop_data.csv

# Sum all the copies sold

awk -F"," '{sum += $3} END {print sum}' ../mockdata/shop_data.csv

# Display total money per item

awk -F"," 'NR > 1 {sum[$4] += $5} END {for (item in sum) print item, sum[item]}' ../mockdata/shop_data.csv


# Display total items per customer

awk -F"," 'NR > 1 {sum[$7] += $3} END {for (item in sum) print item, sum[item]}' ../mockdata/shop_data.csv

# Display total orders per customer

awk -F"," 'NR > 1 {sum[$7] += 1} END {for (item in sum) print item, sum[item]}' ../mockdata/shop_data.csv
