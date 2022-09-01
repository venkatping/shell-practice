#!/bin/bash
read -p "Enter a word to convert to upper case: " string
echo "converting $string to upper case: ${string^^}"

TR=$(echo ${string} |tr [:lower:] [:upper:])
echo "convert $string using tr command: $TR"
