#!/bin/bash

# Check if the file exists
if [ ! -f "$1.txt" ]; then
    # If the file does not exist, create it
    touch "$1.txt"
    echo "File created: $1.txt"
fi

# Read open tabs of every Google Chrome window
csv_string=$(osascript -e 'tell application "Google Chrome" to get URL of every tab of every window')
IFS=',' read -ra buf <<< "$csv_string"

# Read the URLs from buffer and write to file
echo "" > "$1.txt"
for url in "${buf[@]}"; do
	echo $url >> "$1.txt"
done
