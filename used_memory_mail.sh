#!/bin/bash
THRESHOLD=20
USED_MEM=$(free -mt | awk '/Total/ {print $3/$2*100}')
if [ "${USED_MEM}" -gt ${THRESHOLD} ]; then
echo "Used Memory is freater than Threshold level"
fi
