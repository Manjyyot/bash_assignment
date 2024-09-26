#!/bin/bash
# This script prints user information

# Print the username
echo "Your username is: $USER"

# Get the user ID
user_id=$(id -u)
echo "Your user ID is: $user_id"

# Get the group ID
group_id=$(id -g)
echo "Your group ID is: $group_id"

# Print the home directory
echo "Your home directory is: $HOME"

# Print the shell used by the user
echo "You are using the shell: $SHELL"
