#!/bin/bash
# Check disk usage and alert if usage exceeds 80%

# Set threshold
threshold=80

# Use awk to directly extract the percentage value
current_usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

# Check if the usage exceeds the threshold
if [ "$current_usage" -ge "$threshold" ]; then
    echo "Warning: Disk usage is $current_usage%, exceeding $threshold%!"
else
    echo "Disk usage is under control: $current_usage%"
fi
