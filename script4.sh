#!/bin/bash
# Script 4: Log File Analyzer (Python Version)

LOGFILE=$1
# Default keyword changed from "error" to "python"
KEYWORD=${2:-"python"}
COUNT=0

# Check file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file '$LOGFILE' not found."
    echo "Usage: $0 <path_to_log> [keyword]"
    exit 1
fi

# If file empty → wait for data
while [ ! -s "$LOGFILE" ]; do
    echo "Log file is empty. Waiting for Python activity..."
    sleep 2
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "----------------------"
echo "Last 5 matching Python-related lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
