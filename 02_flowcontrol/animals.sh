#!/bin/bash

read ANIMAL

echo "===Welcome to the Zoo==="


if [ "$ANIMAL" = "dog" ]; then
echo "Woof Woof"
elif [ "$ANIMAL" = "cat" ]; then
echo "Meow Meow!"
elif [ "$ANIMAL" = "bear" ]; then
echo "ROOOAAR!"
elif [ "$ANIMAL" = "frog" ]; then
echo "Ribbit Ribbit"
elif [ "$ANIMAL" = "monkey" ]; then
echo "U U UU E EE"
elif [ "$ANIMAL" = "pig" ]; then
echo "oink oink"
else
echo "We don't know :("
fi

