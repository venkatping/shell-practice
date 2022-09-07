#!/usr/bin/env bash
<<oneway
uid=$(id -u)
[[ $uid -eq 0 ]] && echo "you are a root user" || echo "you are not root user"
oneway
<<secondway
if [[ $(id -u) -eq 0 ]]; then
	echo "you are a root user"
else
	echo "you are not root user"
fi
secondway

#to check user have sudo privileges or not
sudo -v 1>/dev/null 2>/dev/null && echo "$(id -un) have sudo privileges on this host $(hostname)" || echo "$(id -un) don't have sudo privileges on this $(hostname)"
sudo -v 2>&1 1>/dev/null && echo "$(id -un) have sudo privileges on this host $(hostname)" || echo "$(id -un) don't have sudo privileges on this $(hostname)"
