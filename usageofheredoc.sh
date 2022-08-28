#!/bin/bash
#use grep to find out a word along with EOF
cat << EOF | grep home
The user is $USER
The home for the $USER is: $HOME
EOF
