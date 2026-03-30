#!/bin/bash
# Script 3: Disk and Permission Auditor (Python Version)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "----------------------"

# Python local library directory check
# This usually stores user-installed packages (pip install --user)
PYTHON_LOCAL_DIR="$HOME/.local/lib"

if [ -d "$PYTHON_LOCAL_DIR" ]; then
    PERMS=$(ls -ld "$PYTHON_LOCAL_DIR" | awk '{print $1, $3, $4}')
    echo "Python Local Directory Found:"
    echo "$PYTHON_LOCAL_DIR => $PERMS"
else
    echo "Python local directory (~/.local/lib) not found"
fi
