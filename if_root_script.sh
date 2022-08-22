#!/bin/bash
USER_ID=$(id -u)
if [ ${USER_ID} -eq 0 ]; then
echo "you are root user"
for i in `ls /root`
do
echo $i
done
else
echo "you are authorized to run this script"
exit 1
fi
