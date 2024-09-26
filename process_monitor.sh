#!/bin/bash
# Check if a process is running, if not, start it.

process_name="apache2"

if pgrep "$process_name" > /dev/null; then
    echo "$process_name is running."
else
    echo "$process_name is not running. Starting it now..."
    sudo service "$process_name" start
    echo "$(date): Restarted $process_name" >> ~/process_monitor.log
fi
