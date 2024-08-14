#!/bin/bash

# Script: Disable Spotlight Indexing
# Description: This script disables and re-enables Spotlight indexing on the specified volume.

# Disable Spotlight indexing
echo "Disabling Spotlight indexing..."
sudo mdutil -i off /

# Remove Spotlight indexes
echo "Removing Spotlight indexes..."
sudo rm -rf /.Spotlight-V100
sudo rm -rf /.Spotlight-V200

# Enable Spotlight indexing
echo "Enabling Spotlight indexing..."
sudo mdutil -i on /

# Reindex Spotlight
echo "Reindexing Spotlight..."
sudo mdutil -E /

# Check for errors
if [ $? -ne 0 ]; then
    echo "Error occurred. Please check the script and try again."
    exit 1
fi

echo "Script completed successfully."
