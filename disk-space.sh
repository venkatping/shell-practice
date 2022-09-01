#!/usr/bin/env bash
MAX=90
EMAIL=server@127.0.0.1
USE=$(df -ThP | grep boot | awk '{print $6}' | cut -d '%' -f 1)
if [ $USE -gt $MAX ]; then
	echo "current boot utilization percentage is: $USE" | mail -s "Running out of boot space" $EMAIL
fi
