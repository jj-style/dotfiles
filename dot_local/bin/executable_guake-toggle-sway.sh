#!/bin/bash

visible=$(guake --is-visible)

guake-toggle
sleep .02;
if [[ $visible -eq 0 ]]; then
    PID=$(swaymsg -t get_tree | jq -r '.. | (.nodes? // empty)[] | select(.window_properties.class == "Guake") | .pid' | tr -d [:space:])
    swaymsg "[pid=$PID] floating enable ,move absolute position 0 100, resize set 75ppt 30ppt"
fi
