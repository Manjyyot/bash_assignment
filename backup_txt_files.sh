#!/bin/bash
# This script backs up all .txt files from a given folder

# Check if the user provided a directory
if [ "$1" == "" ]; then
  echo "Please provide a directory to back up."
  exit 1
fi

# Get the current date and time for the backup folder name
current_time=$(date +"%Y%m%d_%H%M%S")
backup_folder="backup_$current_time"

# Create the backup folder
mkdir $backup_folder

# Copy all .txt files from the given directory to the backup folder
cp $1/*.txt $backup_folder

# Let the user know the backup is done
echo "Backup is complete! All .txt files are in the folder: $backup_folder"
