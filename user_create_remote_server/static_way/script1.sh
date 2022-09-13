#!/usr/bin/env bash
#This script is to test
echo "Menu Options
      Enter 1 for redhat/centos
      Enter 2 for Ubuntu"
case $3 in
	1)
		echo "creating $1 in Redhat/CentOS..."
		sudo useradd $1
		echo $2 | sudo passwd --stdin $1
		echo "$1 created"
		;;
	2)	
		echo "creating $1 in Ubuntu..."
		sudo useradd -d /home/$1 -m  $1
		#for Ubuntu server this command not works with sh instead works with bash so run like ./script.sh but don't run script like sh script.sh
		echo "$1:$2" | sudo chpasswd
		;;
	*)
		echo "Invalid Option Try 1 or 2 depending on OS"
		;;
esac
