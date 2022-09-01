#!/bin/bash
arr=('-' '\' '|' '/')
while true; do
	for i in "${arr[@]}";do
		echo -en "\r $i"
		sleep .5
	done
done
