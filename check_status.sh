#!/bin/bash

# የምንፈትሸው ፋይል
FILE="day8_log.txt"

echo "--- System File Check ---"

if [ -f "$FILE" ]; then
    echo "✅ Success: $FILE is already here."
else
    echo "❌ Warning: $FILE is missing! Creating it now..."
    touch "$FILE"
    echo "Done! $FILE has been created for you."
fi

echo "-------------------------"
