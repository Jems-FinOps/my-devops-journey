#!/bin/bash

echo "--- Creating Multiple Folders ---"

# ከ 1 እስከ 5 ያሉ ቁጥሮችን በመጠቀም ፋይል ይፈጥራል
for i in {1..10}
do
   echo "Creating folder number $i..."
  
   mkdir "jem_folder_$i"
done

echo "✅ Done! 10 jem_folders are created successfully."
