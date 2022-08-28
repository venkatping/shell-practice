#!/bin/bash
if [ $# -ne 2 ]; then
# if two inputs are not received from the user then execute below commands
echo "Usage $0 x y"
echo "x and y numbers show be given in command line"
exit 1
else
echo "SUM of $1 and $2 is: `expr $1 + $2`"
echo "Script executed successfully"
fi
