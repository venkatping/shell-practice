#!/bin/bash
read -p "Enter your name: " name
echo "My Name Is: ${name}"
echo "My Name in UpperCase Letter: ${name^^}"
echo "My Name in LowerCase Letter: ${name,,}"
echo "Number of variables Entered: $#"
