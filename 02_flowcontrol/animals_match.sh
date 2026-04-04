#!/bin/bash

read ANIMAL

case $ANIMAL in
    dog)
    echo "woof woof!"
    ;;
    cat)
    echo "meow meow!"
    ;;
    pig)
    echo "oink oink"
    ;;
    *)
    echo "we don't know :("
    ;;
esac
