#!/bin/bash
rsync -avz -e ssh /shellscripting/remotebackup.sh root@localhost:/tmp
echo "backup for $(date)" | mail -s "Backup Complete" chilakasainaveen@gmail.com
