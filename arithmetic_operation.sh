#!/usr/bin/env bash
read -p "enter the value of A: " a
read -p "enter the value of B: " b
SUM=$(bc<<<"$a + $b")
echo "Sum of $a and $b is: $SUM"
read -p "Enter the value of X: " x
read -p "Enter the value of y: " y
ADD=$(( x + y ))
ADD1=$(( $x + $y ))
echo "sum of $x and $y is: $ADD"
echo "sum of $x and $y is: $ADD1"
