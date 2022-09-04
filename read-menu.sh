#!/usr/bin/env bash
clear
cat << EOF
Please Select:
	1. Display System Information
	2. Display Disk Space
	3. Display Home Space Utilization
	0. Exit
EOF
echo -n "Enter Selection [0-3]: "
read -r sel
case $sel in
	0)
		echo "Program Terminated!"
		;;
	1)
		echo "Hostname: $HOSTNAME"; uptime
		;;
	2)
		df -ThP
		;;
	3)
		if [ $UID -eq 0 ]; then
			echo "Home Space Utilization (ALL USERS)"
			du -sh /home/*
		else
			echo "Home Space Utilization for $USER"
			du -sch $HOME
		fi
		;;
	*)
		echo "Invalid Entry." >&2
		exit 1
esac
