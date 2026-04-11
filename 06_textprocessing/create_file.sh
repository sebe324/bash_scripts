#!/bin/bash

read PACKAGE_NAME
read CLASS_NAME

FILENAME=$CLASS_NAME.java
oldIFS=$IFS
IFS="."

read -r -a FOLDER_ARRAY <<< "$PACKAGE_NAME"

for folder_name in ${FOLDER_ARRAY[@]}; do
    mkdir $folder_name
    cd $folder_name
    echo $folder_name
done
IFS=$oldIFS
echo -n "" > $FILENAME
echo "package $PACKAGE_NAME;" >> $FILENAME

echo "class $CLASS_NAME {" >> $FILENAME

echo -e "\tpublic static void main(String[] args){" >>$FILENAME 

echo -e "\tSystem.out.println(\"Hello world!\");" >> $FILENAME

echo -e "\t}" >> $FILENAME
echo "}" >> $FILENAME

java $FILENAME