#!/bin/bash
TARGET_WORKSPACE=$1

ACTIVE_WIN=$(swaymsg -t get_tree | jq '.. | select(.focused? == true) | .id')

if [ ! -z "$ACTIVE_WIN" ]; then
    for i in 9 8 7 6 5 4 3 2 1 0; do
        swaymsg "[con_id=$ACTIVE_WIN]" opacity 0.$i
        sleep 0.005
    done
    swaymsg "[con_id=$ACTIVE_WIN]" opacity 1.0
fi

swaymsg workspace number $TARGET_WORKSPACE

sleep 0.05
NEW_WIN=$(swaymsg -t get_tree | jq '.. | select(.focused? == true) | .id')

if [ ! -z "$NEW_WIN" ]; then
    swaymsg "[con_id=$NEW_WIN]" opacity 0.0
    for i in 1 2 3 4 5 6 7 8 9; do
        swaymsg "[con_id=$NEW_WIN]" opacity 0.$i
        sleep 0.005
    done
    swaymsg "[con_id=$NEW_WIN]" opacity 1.0
fi
