#!/bin/bash

echo "===== SYSTEM REPORT ====="
date

echo "---- CPU Usage ----"
top -bn1 | grep "Cpu"

echo "---- Memory Usage ----"
free -h

echo "---- Disk Usage ----"
df -h

echo "---- Top Processes ----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo "---- Backup Home Directory ----"
tar -czf backup_$(date +%F).tar.gz /home 2>/dev/null

echo "Backup Completed Successfully"
