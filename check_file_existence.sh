check_file_exists(){
    local FILENAME=$1

    echo "Checking for file: $FILENAME..."

    if [ -e "$FILENAME" ]; then
        echo "✅ Success: $FILENAME exists!"
        return 0
    else
        echo "❌ Error: $FILENAME could not be found."
        return 1
    fi
}

# Example of how to use it:
check_file_exists "check_file.sh"


#!/bin/bash

# ፋይል መኖሩን የሚፈትሽ ፋንክሽን
check_existence() {
    local TARGET=$1 # local ማለት ይህ ቫሪያብል ከፋንክሽኑ ውጭ አይሰራም ማለት ነው

    echo "Checking for: $TARGET..."

    if [ -e "$TARGET" ]; then
        echo "✅ Success: $TARGET exists!"
        return 0 # ፋንክሽኑ በተሳካ ሁኔታ ሲጠናቀቅ 0 ይመልሳል
    else
        echo "❌ Error: $TARGET not found."
        return 1 # ፋንክሽኑ ሲከሽፍ 1 ይመልሳል
    fi
}

# ፋንክሽኑን መጥራት እና ውጤቱን በ Logic ማየት
check_existence "check_file.sh" && echo "Proceeding to next task..." || echo "Stopping process."
