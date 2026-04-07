#!/bin/bash

# A list is a sequence of one or more pipelines separated by one of the operators ‘;’, ‘&’, ‘&&’, or ‘||’, and
# optionally terminated by one of ‘;’, ‘&’, or a newline. 

echo "Hello 1"; echo "Hello 2" # Both display sequentially

true && echo "Hello 3"
true || echo "Hello 4" # Does not display

false && echo "Hello 5" # Does not display
false || echo "Hello 6"

echo "Hello 7" & echo "Hello 8" # "Hello 7 is async in a subshell"
