#!/bin/bash

STATE_FILE="mouse_battery.txt"

# Get battery percentage from rivalcfg
BATTERY=$(rivalcfg --battery 2>/dev/null)

if [[ $BATTERY =~ [0-9]+ ]]; then
  PERCENT=$(echo "$BATTERY" | grep -o '[0-9]\+')
elif [[ -f "$STATE_FILE" ]]; then
  PERCENT=$(<"$STATE_FILE")
else
  PERCENT=0
fi

# Save the current value for future use
echo "$PERCENT" >"$STATE_FILE"

# Decide which icon to use based on percentage
if [ "$PERCENT" -ge 80 ]; then
  ICON="" # Full
elif [ "$PERCENT" -ge 60 ]; then
  ICON="" # 3/4
elif [ "$PERCENT" -ge 40 ]; then
  ICON="" # Half
elif [ "$PERCENT" -ge 20 ]; then
  ICON="" # Low
else
  ICON="" # Critical
fi

# Print JSON output for Waybar
echo "$ICON  $PERCENT%"
