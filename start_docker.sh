#!/usr/bin/env bash
#start Docker service
if [[ $(id -u) -eq 0 ]]
then
	if systemctl status docker  1>/dev/null 2>/dev/null
	then
        	echo "Already Docker Service is Up and Running"
	else
        	echo "Starting Docker Service..."
        	systemctl start docker
        	echo "Docker Service Started Successfully"
	fi	
else
	if sudo -v 1>/dev/null 2>/dev/null
	then
		if systemctl status docker  1>/dev/null 2>/dev/null
        	then
                	echo "Already Docker Service is Up and Running"
        	else
                	echo "Starting Docker Service..."
                	systemctl start docker
                	echo "Docker Service Started Successfully"
        	fi
	else
		echo "Sorry! you are not allowed to start docker service because you are not root user and also you don't have sudo privileges to start it"
	fi
fi

<<firstway
if systemctl status docker  1>/dev/null 2>/dev/null
then
	echo "Already Docker Service is Up and Running"
else
	echo "Starting Docker Service..."
	systemctl start docker
	echo "Docker Service Started Successfully"
fi
firstway
