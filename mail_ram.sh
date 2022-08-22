#!/bin/bash
TO="chilakasainaveen@gmail.com"
THRESHOLD=4000
FREE_MEMORY=$(free -mt | grep -i "Total:" | awk '{print $2}')
if [[ $FREE_MEMORY -le $THRESHOLD ]]
then
   echo -e "YOUR RAM SIZE is not under control\nAvailable RAM is $FREE_MEMORY" | /bin/nail -s "RAM INFO: " $TO
fi
