#!/bin/bash

NAME="Gandalf"
TITLE="Graybeard"
AGE="4000"

echo "using \" \" "
echo "Hello I am $NAME $TITLE. I am $AGE years old"
echo "using \' \' "
echo 'Hello I am $NAME $TITLE. I am $AGE years old'

echo "using \$(ls)"
echo "$(ls)"
echo "using \`ls\` "
echo "`ls`"

echo "using \$((\$((2+3))+2))"
echo "$(($((2+3))+2))"
echo "using \`expr \`expr 2 + 3\` + 2\` "
echo "`expr \`expr 2 + 3\` + 2`"
