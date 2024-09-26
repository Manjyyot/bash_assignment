#!/bin/bash
# Simple script to count lines, words, and characters in a text file

# Check if a file is provided
if [ -z "$1" ]; then
    echo "Please provide a file name."
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "The file $1 does not exist!"
    exit 1
fi

# Use wc command to count lines, words, and characters
lines=$(wc -l < "$1")
words=$(wc -w < "$1")
characters=$(wc -m < "$1")

# Display the results
echo "File: $1"
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $characters"
