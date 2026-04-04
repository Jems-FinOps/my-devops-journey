#!/bin/bash

# የራም አጠቃቀምን የሚወክል ቁጥር
RAM_USAGE=35

echo "--- System Monitoring ---"

if [ "$RAM_USAGE" -gt 80 ]; then
    echo "⚠️ ALERT: RAM usage is too high: $RAM_USAGE%"
else
    echo "✅ OK: RAM usage is normal: $RAM_USAGE%"
fi
