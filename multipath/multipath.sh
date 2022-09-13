#!/usr/bin/env bash
for i in `cat serverlist`
do
read -p "Enter the username to login to the server: " LOGIN
ssh -o StrictHostKeyChecking=no -t $LOGIN@$i "multipath -ll ; cat /sys/class/fc_host/host*/port_name" >> $i.txt
done
