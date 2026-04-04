#!/bin/bash

echo "--- Creating Multiple Files ---"

for i in {1..5}
do
   echo "Creating file number $i..."
   touch "backup_file_$i.txt"
done

echo "✅ Done! 5 files created successfully."
