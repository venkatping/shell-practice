#!/bin/bash
echo "printing colored output"
read -p "Enter your color: " option
case $option in
	black)
		echo "Printing output in $option color"
		echo -e "\e[30m black color \e[0m"
		;;
	green)
		echo "Printing output in $option color"
                echo -e "\e[32m black color \e[0m"
		;;
	red)
		echo "Printing output in $option color"
                echo -e "\e[31m black color \e[0m"
		;;
	*)
		echo "entered wrong option"
		echo "usage $0 red or green or black"
		;;
esac
