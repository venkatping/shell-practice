#!/usr/bin/env bash
<<simplescript
read -p "Enter your number: " num
if [[ $num -ge 50 ]]; then
	echo "$num is greater then and equals to 50"
else
	echo "$num is lesser than 50"
fi
simplescript

<<oneway
read -p "Enter your number: " num
if [[ $num -ge 50 ]] && [[ $num -le 100 ]]; then
        echo "$num is in the range of 50 to 100"
else
        echo "$num is out of 50 to 100 range"
fi
oneway
<<secondway
read -p "Enter your number: " num
if [[ $num -ge 50 && $num -le 100 ]]; then
        echo "$num is in the range of 50 to 100"
else
        echo "$num is out of 50 to 100 range"
fi
secondway
<<logicaland
#to use -a use only single [] don't use [[]]
read -p "Enter your number: " num
if [ $num -ge 50 -a $num -le 100 ]; then
        echo "$num is in the range of 50 to 100"
else
        echo "$num is out of 50 to 100 range"
fi
logicaland

read -p "Enter your confirmation to start docker(yes/no)? " cnf

#if [[ $cnf == "yes" ]] || [[ $cnf == "y" ]]
#if [[ $cnf == "yes" || $cnf == "y" ]]
if [ $cnf == "yes" -o $cnf == "y" ]
then
	echo "starting docker..."
	systemctl start docker
else
	echo "skipping..."
fi
