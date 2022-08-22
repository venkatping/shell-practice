#!/bin/bash
echo -e "Enter maths marks: \c"
read -r m
echo -e "Enter physics marks: \c"
read -r p
echo -e "Enter chemistry marks: \c"
read -r c

if test $m -ge 35 -a $p -ge 35 -a $c -ge 35
then
echo "Congratulations, You have passed in all subjects"
else
echo "Sorry you not upto in one of the subject"
fi
