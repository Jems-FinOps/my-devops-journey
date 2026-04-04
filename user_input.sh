#!/bin/bash

echo "--- DevOps User Interface ---"

read -p "Enter your project name: " PROJ_NAME

echo "What do you want to do today?"
echo "1. System Health Check"
echo "2. Create Backup Folder"
read -p "Choose option (1 or 2): " CHOICE

if [ $CHOICE -eq 1 ]; then
    echo "Running health check for $PROJ_NAME..."
    ./check_ram.sh
else
    echo "Creating backup folder for $PROJ_NAME..."
    mkdir -p "${PROJ_NAME}_backup"
fi

echo "✅ Task completed for $PROJ_NAME!"
