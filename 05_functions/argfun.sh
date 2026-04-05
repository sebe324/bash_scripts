#!/bin/bash

function return_add() {
    a=$1
    b=$2
    return $[a+b]
}

function echo_add()
{
    a=$1
    b=$2
    echo $[a+b]
}

# ok
return_add 3 4
echo "The result is: $?"

# overflow?
return_add 200 400
echo "The result is: $?"

# ok
echo_add 3 4

#ok

echo "Echo add $(echo_add 3 4)"
