#!/bin/bash

COUNTER=5

echo "--- System Countdown Started ---"

while [ $COUNTER -gt 0 ]
do
   echo "System check in $COUNTER seconds..."
   # COUNTERን በአንድ ይቀንሳል
   COUNTER=$((COUNTER - 1))
   # ለ 1 ሰከንድ እንዲያርፍ ያደርገዋል
   sleep 1
done

echo "🚀 System is Ready!"
