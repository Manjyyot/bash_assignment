#!/bin/bash
# Script to check permissions for a given file

# Check if the filename is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a filename."
    exit 1
fi

# Assign the argument to a variable
file="$1"

# Check if file exists
if [ ! -e "$file" ]; then
    echo "File does not exist!"
    exit 1
fi

# Check for read permission
if [ -r "$file" ]; then
    echo "$file can be read."
else
    echo "$file cannot be read."
fi

# Check for write permission
if [ -w "$file" ]; then
    echo "$file can be written to."
else
    echo "$file cannot be written to."
fi

# Check for execute permission
if [ -x "$file" ]; then
    echo "$file can be executed."
else
    echo "$file cannot be executed."
fi
