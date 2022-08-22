#!/bin/bash
read -p "Enter the value of x: " x
read -p "Enter the value of y: " y
echo "=======Menu for Athemetic operation=========="
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
read -p "please select your option from above menu: " option
case $option in
    1)
       echo "You selected Addition"
       echo "The SUM of $x and $y is: $(( $x + $y ))"
       ;;
    2)
       echo "You selected subtraction"
       echo "The sub of $x and $y is: $(( $x - $y ))"
       ;;
    3)
       echo "You selected Multiplication"
       echo "The multiplication of $x and $y is: $(( $x * $y ))"
       ;;
    4)
       echo "You selected Division"
       echo " The Division of $x and $y is: $(bc<<<"scale=2;$x/$y")"
       ;;
    *)
       echo "You have selected Invalid option"
       ;;
esac   
