#!/bin/bash

touch {0..9}

filename=$(echo $(ls -a) | tr -d ' ')

touch filename

ls -a

rm filename
rm {0..9}
