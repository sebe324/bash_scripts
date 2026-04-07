#!/bin/bash

echo -n "Enter the name of an animal: "
read ANIMAL

echo -n "The $ANIMAL has "
case $ANIMAL in
    horse | dog | cat | pig | cow ) echo -n "four"
    ;;
    kangaroo | monkey ) echo -n "two"
    ;;
    spider ) echo -n "eight"
    ;;
    *)
    echo -n "an unknown number of"
    ;;
esac
echo " legs."

