#!/bin/bash

CACHE_FILE="/tmp/discord_swap_cache"

# Function to get the ID of the Discord window
get_discord_id() {
    swaymsg -t get_tree | jq '.. | select(.name? // "" | contains("Discord")) | .id' | head -n1
}

# Function to get the ID of the focused window
get_focused_id() {
    swaymsg -t get_tree | jq '.. | select(.focused?) | .id' | head -n1
}

# Get Discord window ID
DISCORD_ID=$(get_discord_id)

if [ -z "$DISCORD_ID" ]; then
    echo "Discord is not running or not found."
    exit 1
fi

# Get the ID of the focused window
FOCUSED_ID=$(get_focused_id)

# Check if we're swapping back
if [ -f "$CACHE_FILE" ]; then
    PREVIOUS_ID=$(cat "$CACHE_FILE")
    
    # If Discord is focused, swap it with the previous window
    if [ "$FOCUSED_ID" == "$DISCORD_ID" ]; then
        swaymsg "[con_id=$DISCORD_ID] swap container with con_id $PREVIOUS_ID"
        swaymsg "[con_id=$PREVIOUS_ID] focus"
        echo "Swapped Discord back with previous window (ID: $PREVIOUS_ID) and focused previous window"
    else
        # If Discord is not focused, swap the focused window with Discord
        swaymsg "[con_id=$DISCORD_ID] swap container with con_id $FOCUSED_ID"
        swaymsg "[con_id=$DISCORD_ID] focus"
        echo "$FOCUSED_ID" > "$CACHE_FILE"
        echo "Swapped Discord (ID: $DISCORD_ID) with focused window (ID: $FOCUSED_ID) and focused Discord"
    fi
else
    # First run or cache file deleted
    swaymsg "[con_id=$DISCORD_ID] swap container with con_id $FOCUSED_ID"
    swaymsg "[con_id=$DISCORD_ID] focus"
    echo "$FOCUSED_ID" > "$CACHE_FILE"
    echo "Swapped Discord (ID: $DISCORD_ID) with focused window (ID: $FOCUSED_ID) and focused Discord"
fi
