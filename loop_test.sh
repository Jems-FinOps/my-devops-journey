#!/bin/bash

echo "Starting bulk file creation..."

# ከ 1 እስከ 5 ያሉትን ቁጥሮች በመጠቀም ፋይል መፍጠር
for i in {1..5}
do
    FILENAME="backup_file_$i.txt"
    echo "Creating $FILENAME..."
    touch "$FILENAME"
    echo "This is backup number $i" > "$FILENAME"
done

echo "All files created successfully!"
ls -l backup_file_*
