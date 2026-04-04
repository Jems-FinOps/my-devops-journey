#!/bin/bash

echo "==========================================="
echo "   LINUX MASTERY - DAY 30 FINAL REPORT    "
echo "==========================================="

# 1. System Identification
echo "[+] System Info:"
hostnamectl | grep "Operating System"
echo "Uptime: $(uptime -p)"

# 2. Resource Status
echo -e "\n[+] Resource Usage:"
free -h | awk '/^Mem:/ {print "RAM: "$3"/"$2}'
df -h / | awk '/\// {print "Disk: "$3"/"$2" ("$5")"}'

# 3. Top 5 Processes
echo -e "\n[+] Top 5 CPU Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

# 4. Security Check (Logs)
echo -e "\n[+] Recent System Logs (Last 3):"
tail -n 3 /var/log/syslog 2>/dev/null || echo "Log access denied."

echo -e "\n==========================================="
echo "       CONGRATULATIONS ON DAY 30!         "
echo "==========================================="
