#!/bin/bash

touch shop_data.csv

# echo -n "" > shop_data.csv

echo "id,date,amount,item_name,total_price,localization,customer" > shop_data.csv
items=("PC" "iPhone" "GPU" "CPU" "PlayStation 4" "XBOX" "Monitor" "Mouse")
prices=(500 200 300 250 400 500 100 20)
names=("John" "Robert" "Adam" "Alice" "Caroline" "Mike")
surnames=("Smith" "Fisher" "Goldman" "Einstein" "White" "Tesla")
countries=("USA" "FRA" "POL" "GER" "CHI" "JAP")

for i in {0..500}; do
    year=$(($RANDOM % 24 + 2000))
    month=$(($RANDOM % 12 + 1))
    case $month in
    2 )
        day=$(($RANDOM%28 + 1))
    ;;

    1 | 3 | 5 | 7 | 8 | 10 | 12 )
        day=$(($RANDOM%31+1))
    ;;
    *)
        day=$(($RANDOM%30+1))
    ;;
    esac
    date=$(printf "%04d-%02d-%02d" $year $month $day)
    amount=$(($RANDOM%100+1))
    item_idx=$(($RANDOM % ${#items[@]}))
    item=${items[$item_idx]}
    price=${prices[$item_idx]}
    total_price=$((price*amount))

    country_idx=$(($RANDOM % ${#countries[@]}))
    country=${countries[$country_idx]}
    
    name_idx=$(($RANDOM % ${#names[@]}))
    surname_idx=$(($RANDOM % ${#surnames[@]}))
    customer_name="${names[$name_idx]} ${surnames[$surname_idx]}"
    echo $i,$date,$amount,$item,$total_price,$country,$customer_name
    echo $i,$date,$amount,$item,$total_price,$country,$customer_name >> shop_data.csv
done
