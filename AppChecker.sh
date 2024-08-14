#!/bin/bash

# Check if Your App is running
if pgrep -x "YourAppName" > /dev/null
then
    echo "Your App is running."
else
    echo "Your App is not running. Launching Your App..."
    # Replace the path below with the actual path to YourApp
    open -a "YourAppName"
fi
