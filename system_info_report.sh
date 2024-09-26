#!/bin/bash
# Script to generate a system information report

# Define the output file
output_file="system_report.txt"

# Collect system information
{
    echo "System Uptime:"
    uptime

    echo -e "\nMemory Usage:"
    free -h

    echo -e "\nCPU Load:"
    top -bn1 | grep "Cpu(s)"

    echo -e "\nDisk Usage:"
    df -h

    echo -e "\nRunning Processes:"
    ps aux | wc -l
} > "$output_file"

echo "System information report generated and saved to $output_file."

