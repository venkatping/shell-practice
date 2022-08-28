#!/bin/bash
#This script will tell file exists or not, if file exists we are checking do we have execute permissions or not
FILE="/home/minikube/test_file"
if [ -f $FILE ]; then
echo "$FILE Exists in server"
else
echo "$FILE doesn't exists in the server"
exit 1
fi

if [ -x $FILE ]; then
echo "$FILE have execute permissions"
else
echo "$FILE doesn't have execute permissions"
fi
