#!/usr/bin/env bash
clear
for i in `cat serverlist`
do
read -p "Enter the username you want to Login to $i server: " LOGIN
echo "copying script.sh file from local to remote server $i ..."
scp -pr script.sh $LOGIN@$i:/home/$LOGIN/
if [[ $? -eq 0 ]]; then
	echo "script.sh file copied to remote server"
	echo "executing the user creation script in server $i ..."
	ssh -o StrictHostKeyChecking=no -t $LOGIN@$i "sudo /bin/bash /home/$LOGIN/script.sh" "rm -rf script.sh"
	if [[ $? -eq 0 ]]; then
		echo "deleting the script.sh file from $i server.."
		/bin/rm -rf /home/$LOGIN/script.sh
	else
		echo "rerun the script again manually to create user"
	fi
	echo "script executed successfully in $i server"
else
	echo "script.sh file not copied to remote server"
	exit 1
fi
done
