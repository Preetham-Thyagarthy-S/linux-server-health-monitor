#!/bin/bash

echo "====================================="
echo " Linux Server Health Monitoring Report"
echo "====================================="

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current Date and Time:"
date

echo ""

echo "----- CPU Usage -----"
top -bn1 | grep "Cpu(s)"

echo ""

echo "----- Memory Usage -----"
free -h

echo ""

echo "----- Disk Usage -----"
df -h

echo ""

echo "----- System Uptime -----"
uptime

echo ""

echo "----- Running Services -----"
systemctl list-units --type=service --state=running | head -10

echo ""

echo "Report Generated Successfully"
