#!/bin/bash
echo "you have to enter .txt or .sh to list the respective extension files"
read -p "Enter the extension to list the files: " ext
case $ext in
	".txt")
		echo "you have entered .txt to list files"
		ls -lrt *.txt
		;;
	".sh")
		echo "you have entered .sh to list files"
		ls -lrt *.sh
		;;
	*)
		echo "you have entered invalid option"
		;;
esac		
