#!/usr/bin/env bash
MAX=95
EMAIL=server@127.0.0.1
USE=$(cat /proc/stat | grep 'cpu '| awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage ""}')
if [ $USE -gt $MAX ]; then
	echo "Percent CPU used: $USE" | mail -s "Running out of CPU Power" $EMAIL
fi
