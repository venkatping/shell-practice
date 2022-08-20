#!/bin/bash

USER_ID=$(id -u)

if [[ $USER_ID -ne 0 ]]; then

	echo "you should be root to run this script"

else

read -p "Enter your action for httpd: " USER_ACTION

fi
