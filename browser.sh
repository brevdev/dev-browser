#!/bin/bash

# Check if the file exists
if [ ! -f "$1.txt" ]; then
    # If the file does not exist, create it
    touch "$1.txt"
    echo "File created: $1.txt"
fi

# Close the existing Google Chrome window
osascript -e 'tell application "Google Chrome" to close windows'

# Read the URLs from the file and open them in Google Chrome
while read -r url; do
    open -n -g -a "Google Chrome" "$url"
done < "$1.txt"
