#!/bin/bash
read -p "Provide a file to convert to upper case: " file

if [ ! -f $file ]; then
echo "$file doesnot exists"
exit 1
fi

tr [:lower:] [:upper:] < $file >> small.txt
