#!/bin/bash
# Simple backup script to archive the documents directory

# Set the source and backup directories
source_dir="/home/$USER/documents"
backup_dir="/home/$USER/backup"
backup_file="documents_backup.tar.gz"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory $source_dir does not exist!"
    exit 1
fi

# Create the backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# Compress the directory and remove leading `/` from file names
tar -czf "$backup_dir/$backup_file" -C "/home/$USER" "documents"

if [ $? -eq 0 ]; then
    echo "Backup completed. File saved at $backup_dir/$backup_file."
else
    echo "Error occurred during backup!"
fi
