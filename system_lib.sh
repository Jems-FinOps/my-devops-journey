#!/bin/bash

# 1. የ Disk ቦታን የሚፈትሽ ፋንክሽን
check_disk() {
    echo "--- Disk Usage ---"
    df -h | grep '^/dev/'
}

# 2. የ CPU ጭነትን የሚፈትሽ ፋንክሽን
check_cpu() {
    echo "--- CPU Load ---"
    uptime | awk '{print $10 $11 $12}'
}

# 3. የ RAM ሁኔታን የሚፈትሽ ፋንክሽን
check_memory() {
    echo "--- Memory Usage ---"
    free -h
}
