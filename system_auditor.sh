#!/bin/bash

# Library-ውን አስገባ
source ./system_lib.sh

REPORT_FILE="system_report.txt"
ERROR_LOG="error.log"

echo "🚀 System Audit እየተጀመረ ነው..."
echo "Audit ስራ የተከናወነበት ቀን፡ $(date)" > $REPORT_FILE

# ፍተሻዎቹን ማከናወን እና ውጤቱን ወደ ሪፖርት ፋይል መላክ
{
    check_disk
    check_cpu
    check_memory
} >> $REPORT_FILE

# ውጤቱን ማረጋገጥ (Exit Code)
if [ $? -eq 0 ]; then
    echo "✅ Audit በተሳካ ሁኔታ ተጠናቋል። ሪፖርቱን $REPORT_FILE ላይ ይመልከቱ።"
else
    echo "❌ ስህተት ተፈጥሯል!" >> $ERROR_LOG
fi
