#!/usr/bin/env bash
#This script is to test
read -p "Enter the username you want to keep: " USERNAME
read -p "Enter the password for ${USERNAME} : " PASSWORD
echo "Menu Options
      Enter 1 for redhat/centos
      Enter 2 for Ubuntu"
read -p "On which OS you want to create user: (redhat/centos)/ubuntu: " OPTION
case $OPTION in
	1)
		echo "creating ${USERNAME} in Redhat/CentOS..."
		useradd ${USERNAME}
			if [[ $? -eq 0 ]]; then
				echo "changing the password for ${USERNAME}"
				echo ${PASSWORD} | passwd --stdin ${USERNAME}
				echo "${USERNAME} created successfully..."
			else
				echo "user $USERNAME might already exist or check the error..."
			fi
		;;
	2)	
		echo "creating ${USERNAME} in Ubuntu..."
		useradd -d /home/${USERNAME} -m  ${USERNAME}
			 if [[ $? -eq 0 ]]; then
                                echo "changing the password for ${USERNAME}"
		                #for Ubuntu server this command not works with sh instead works with bash so run like ./script.sh but don't run script like sh script.sh
				echo "${USERNAME}:${PASSWORD}" | chpasswd
				echo "${USERNAME} created successfully..."
			 else
                                echo "user $USERNAME might already exist or check the error..."
                        fi
		;;
	*)
		echo "Invalid Option Try 1 or 2 depending on OS"
		;;
esac
