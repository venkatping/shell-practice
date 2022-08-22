#!/bin/bash
HOSTNAME=$(hostname)
DATET=$(date "+%Y-%m-%d %H:%M:%S")
CPUUSAGE=$(top -b -n 2 -d1 | grep -i "Cpu(s)" | tail -n 1 | awk '{print $2}' | awk -F '.' '{print $1}')
MEMUSAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISKUSAGE=$(df -h / | awk '{print $5}' | grep -v "Use" |sed 's/%//g')
echo 'Hostname, Date&Time, CPU(%), MEM(%), DISK(%)' >> /opt/usagereport
echo "${HOSTNAME}, ${DATET}, ${CPUUSAGE}, ${MEMUSAGE}, ${DISKUSAGE}" >> /opt/usagereport

for i in `cat serverlist`
do
RHOST=$(ssh $i hostname)
RDATET=$(ssh $i 'date "+%Y-%m-%d %H:%M:%S"')
RCPUUSAGE=$(ssh $i top -b -n 2 -d1 | grep -i "Cpu(s)" | tail -n 1 | awk '{print $2}' | awk -F '.' '{print $1}')
RMEMUSAGE=$(ssh $i free | grep Mem | awk '{print $3/$2 * 100.0}')
RDISKUSAGE=$(ssh $i df -h / | awk '{print $5}' | grep -v "Use" |sed 's/%//g')

echo "${RHOST}, ${RDATET}, ${RCPUUSAGE}, ${RMEMUSAGE}, ${RDISKUSAGE}" >> /opt/Rusagereport
done
