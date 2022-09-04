#!/usr/bin/env bash
{
date;pwd;uptime
}

#another way of doing this
{ date ; pwd ; uptime ; }

#another way of doing this, if which docker command executed perfecly then the remaining two echo commands will be executed individually
#which docker | echo "Docker is installed on this host" echo "The docker version: $(docker -v)"
which docker && { echo "Docker is installed on this host" ; echo "The docker version: $(docker -v)" ;}
which apache2 2>&1 1>/dev/null && { echo "apache is installed...." ; echo "apache version info: $(apache2 -v)" ; } || echo "apache is not installed...."
