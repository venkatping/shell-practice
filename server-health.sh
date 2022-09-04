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

