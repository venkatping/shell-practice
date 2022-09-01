#!/bin/bash
read -p "Enter anything: " num
echo "==========Menu=========="
echo "you can enter small and capital alphabets"
echo "you can enter numbers"
echo "========================"
case $num in
	[a-z])
		echo "you have entered small letter alphabet"
		;;
	[A-Z])
		echo "you have entered capital letter alphabet"
		;;
	[0-9])
		echo "you have entered a number between 0 to 9"
		;;
	*)
		echo "you have entered a invalid option"
		;;
esac
