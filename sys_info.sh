#!/bin/bash

echo "### OS Version ###"
cat /etc/os-release

echo -e "\n### Users with Bash Shell ###"
awk -F: '$NF ~ /bash$/ {print $1}' /etc/passwd

echo -e "\n### Open Ports ###"
ss -tuln
