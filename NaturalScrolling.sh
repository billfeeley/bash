#!/bin/bash

# Check Natural Scrolling status for mouse and trackpad
mouse_scroll_status=$(defaults read NSGlobalDomain com.apple.swipescrolldirection)
trackpad_scroll_status=$(defaults read com.apple.AppleMultitouchTrackpad com.apple.trackpad.scrolling)

# If Natural Scrolling enabled (value is 1)- disable it
if [ "$mouse_scroll_status" == "1" ]; then
    echo "Disabling Natural Scrolling for the mouse..."
    defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
else
    echo "Natural Scrolling for the mouse is already disabled."
fi

if [ "$trackpad_scroll_status" == "1" ]; then
    echo "Disabling Natural Scrolling for the trackpad..."
    defaults write com.apple.AppleMultitouchTrackpad com.apple.trackpad.scrolling -bool false
else
    echo "Natural Scrolling for the trackpad is already disabled."
fi

#Apply changes
killall Finder
killall Dock

echo "Natural Scrolling settings have been updated.
