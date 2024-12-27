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
