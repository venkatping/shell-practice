#!/bin/bash
clear
i="y"
read -p "Enter First number: " n1
read -p "Enter second number: " n2
while [ $i = "y" ]; do
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
read -p  "Enter your choice: " ch
case $ch in
	1)
		echo "Selected Addition..."
		sum=$(expr $n1 + $n2)
		echo "sum= " $sum
		;;
	2)
		echo "Selected Subtraction..."
		sub=$(expr $n1 - $n2)
		echo "sub= " $sub
		;;
	3)
		echo "Selected Multiplication..."
		Mul=$(expr $n1 \* $n2)
		echo "Mul= " $Mul
		;;
	4)
		echo "Selcted Division..."
		Div=$(expr $n1 / $n2)
		echo "Div= " $Div
		;;
	*)
		echo "Invalid Choice! Try Again"
		;;
esac
read -p "Do u Want to continue(y/n)" i
if [ $i != "y" ]; then
exit
fi
done
