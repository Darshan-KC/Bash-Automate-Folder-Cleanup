# Automate folder clean up script
#! /bin/bash

# Script to clean up files older than a specified number of days from a folder.
# Usage: ./cleanup.sh <folder_path> <days>

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <folder_path> <days>"
    exit 1
fi

# Input arguments
FOLDER_PATH=$1
DAYS=$2

# Validate the folder path
if [ ! -d "$FOLDER_PATH" ]; then
    echo "Error: Folder '$FOLDER_PATH' does not exist."
    exit 1
fi

# Preview the files to be deleted
echo "The following files older than $DAYS will be deleted: "
find "$FOLDER_PATH" -type f -mtime +"$DAYS" -print

# Ask the user for confirmation
read -p "Do you want to delete these files? (y/n): " CONFIRM
CONFIRM="${CONFIRM,,}"

# Process user's confirmation
if [ "$CONFIRM" != "y" ]; then
    echo "Cleanup cancelled."
    exit 0
fi

# File deletion code starts here
find "$FOLDER_PATH" -type f -mtime +"$DAYS" -exec rm -f {} \;

# Completion message
echo "Cleanup complete. Files older than $DAYS days have been deleted from '$FOLDER_PATH'."