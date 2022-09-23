#!/usr/bin/env bash
TOP=$(top -b | head -n 15 | tail -9)
SWAP=$(for file in /proc/*/status ; do awk '/VmSwap|Name/{printf $2 " " $3}END{ print ""}' $file; done | grep "java")
echo "Hostname: $(hostname)"
echo "IP Address of the Host: $(hostname -I)"
echo "--------------------------------------"
echo -e "Top 5 CPU and Memory utilized processses:"
echo "${TOP}"
echo ""
echo "--------------------------------------"
echo -e "TOP swap memory utilized processes:"
echo "${SWAP}"
