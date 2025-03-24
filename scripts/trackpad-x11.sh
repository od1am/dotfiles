#!/bin/bash

# Script to enable natural scrolling and two-finger right click on ELAN touchpad
# For X11 environments

# Find the touchpad ID
TOUCHPAD_ID=$(xinput list | grep -i "touchpad" | grep -o "id=[0-9]*" | cut -d= -f2)

if [ -z "$TOUCHPAD_ID" ]; then
    echo "Error: Touchpad not found"
    exit 1
fi

echo "Found touchpad with ID: $TOUCHPAD_ID"

# Enable natural scrolling
echo "Enabling natural scrolling..."
xinput set-prop "$TOUCHPAD_ID" "libinput Natural Scrolling Enabled" 1

# Enable two-finger right click (clickfinger method)
echo "Enabling two-finger right click..."
xinput set-prop "$TOUCHPAD_ID" "libinput Click Method Enabled" 0 1

# Enable tapping
echo "Enabling tap to click..."
xinput set-prop "$TOUCHPAD_ID" "libinput Tapping Enabled" 1

echo "Touchpad configuration complete"
