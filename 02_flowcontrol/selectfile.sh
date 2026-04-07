#!/bin/bash


select fname in *;

do
    echo "You picked $fname ($REPLY)"
    break;
done
