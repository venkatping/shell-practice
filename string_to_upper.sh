#!/bin/bash
<< MYCOMM
read -p "Enter your specialization: " TECH
TECH_UPPER=${TECH^^}
echo "COnverted entered string to upper case: ${TECH_UPPER}"
MYCOMM

read -p "Enter your name: "	#if we do not provide any variable name in your read command, By default, it stores output in a variable called REPLY
echo $REPLY
