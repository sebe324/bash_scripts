#!/bin/bash

# Check if file exists
filename1=calculations.sh
filename2=eougohgogqi.sh
[[ -a $filename1 ]] && echo "File $filename1 exists" || echo "File $filename1 does not exist"
[[ -a $filename2 ]] && echo "File $filename2 exists" || echo "File $filename2 does not exist"
echo
# True if file exists and is a directory

filename3="../02_flowcontrol"
filename4=helloworld.sh
[[ -d $filename3 ]] && echo "File $filename3 exists and is a directory" || echo "File $filename3 does not exist or is not a directory"
[[ -d $filename4 ]] && echo "File $filename4 exists and is a directory" || echo "File $filename4 does not exist or is not a directory"
echo 

# Check if file exists
filename1=calculations.sh
filename2=eougohgogqi.sh
[[ -e $filename1 ]] && echo "File $filename1 exists" || echo "File $filename1 does not exist"
[[ -e $filename2 ]] && echo "File $filename2 exists" || echo "File $filename2 does not exist"
echo

# Check if variable name is set

[[ -v filename3 ]] && echo "filename3 is set" || echo "filename3 is not set"
[[ -v filename1234 ]] && echo "filename1234 is set" || echo "filename1234 is not set"

[[ "calculations.sh" -nt "helloworld.sh" ]] && echo "calculations.sh is newer than helloworld.sh" || echo "calculations.sh is older than helloworld.sh"

[[ 5 -eq 10 ]]
[[ 5 -ne 10 ]]
[[ 5 -lt 10 ]]
[[ 5 -le 10 ]]
[[ 5 -gt 10 ]]
[[ 5 -ge 10 ]]
