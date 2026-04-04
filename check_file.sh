#!/bin/bash
#!/bin/bash

FILENAME=$1

echo "Checking for file: $FILENAME..."

if [ -e "$FILENAME" ]; then
    echo "✅ Success: $FILENAME exists!"
    exit 0
else
    echo "❌ Error: $FILENAME could not be found."
    exit 1
fi
