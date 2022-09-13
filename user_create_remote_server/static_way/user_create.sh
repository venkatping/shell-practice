#!/usr/bin/env bash
for i in `cat serverlist`
do
read -p "Enter the username you want to Login: " LOGIN
ssh -o StrictHostKeyChecking=no -t $LOGIN@$i 'bash -s' -- < ./script1.sh praveen1 krish@123 2
done
