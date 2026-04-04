#!/bin/bash

COUNT=$1
NAME=$2

echo "--- Smart File Creator ---"
echo "Creating $COUNT files with the name prefix: $NAME"

for i in $(seq 1 $COUNT)
do
   touch "${NAME}_$i.txt"
   echo "Generated: ${NAME}_$i.txt"
done

echo "✅ Done! Created $COUNT files."
