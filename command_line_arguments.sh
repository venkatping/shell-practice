#!/bin/bash
<< MYCOMM
echo "$1"
echo "$2"
echo "$3"
echo "$4"
echo "${10}"
MYCOMM

echo "The number of command line arguments provided: $#"
echo "print all the command line arguments at a time: $@"
echo "print all the command line arguments at a time: $*"
