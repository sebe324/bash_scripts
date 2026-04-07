#!/bin/bash

find /home/seba | grep -e \.java$ -e \.txt$ | while read a; do wc -l $a; done

