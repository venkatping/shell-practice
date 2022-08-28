#!/bin/bash
#write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.
read -p "Enter the path of the file: " FILE

if [ -f $FILE ]; then
echo "The file is a regular file"
fi
if [ -d $FILE ]; then
echo -e "The Path enetered is a directory:\n`ls $FILE`"
fi
