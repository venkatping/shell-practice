#!/usr/bin/env bash
<< SIMPLEIF
which docker && { echo "Docker is installed on this host" ; echo "The docker version: $(docker -v)" ;}

#SYNTAX1 and 2
if which docker 2>/dev/null 1>/dev/null
then
	echo "Docker is installed on this host"
	echo "The docker version: $(docker -v)"
fi
#SYNTAX1 and 2
which docker 2>&1 1>/dev/null

if [[ $? -eq 0 ]]; then
        echo "Docker is installed on this host"
        echo "The docker version: $(docker -v)"
fi
SIMPLEIF

<<TRUE
if true
then
	echo "always this will execute"
fi

if false
then
	echo "it won't execute"
fi
TRUE

<<ELSE_IF
#which apache2 2>&1 1>/dev/null && { echo "apache is installed...." ; echo "apache version info: $(apache2 -v)" ; } || echo "apache is not installed...."

#SYNTAX3 and 4
if which apache2 2>&1 1>/dev/null
then
	echo "apache is installed...."
	echo "apache version info: $(apache2 -v)"
else
	echo "apache is not installed...."
fi
ELSE_IF

