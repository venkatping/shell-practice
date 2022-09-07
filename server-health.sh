#!/bin/bash
date
echo "Uptime:"
uptime
echo "Currently Connected..."
w
echo "---------------------------------"
echo "Last Logins..."
last -a | head -n 3
echo "Disk and Memory Usage"
df -h | grep -v "tmpfs" | xargs | awk '{print "Free/Total/Used: "  $11 " / " $9 " / " $10 }'
free -mt | xargs | awk '{print "Free/Total/Used Memory: " $10 " / " $8 " / " $9 }'
echo "---------------------------------"
START_LOG=$(head -1 /var/log/messages | cut -c 1-12)
OOM=$(grep -ci kill /var/log/messages)
echo -n "oom errors since ${START_LOG}: " $OOM
echo ""
echo "---------------------------------"
echo "Utilization and Most Memory/CPU consuming processes"
top -b | head -3
echo ""
top -b | head -n 10 | tail -4
echo "---------------------------------"
echo "open ports"
nmap 127.0.0.1
echo "---------------------------------"
echo "Current Connections:"
ss -s
echo "---------------------------------"
echo "Processes:"
ps auxf --width 200
echo "---------------------------------"
echo "vmstat:"
vmstat 1 5
