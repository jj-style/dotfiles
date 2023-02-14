#!/bin/bash

internal="eDP1"
external="HDMI1"

case "$1" in
    "disconnect")
        xrandr --output "$external" --auto --off
        ;;
    "extend")
        xrandr --output $external --auto --right-of $internal
        ;;
    "mirror")
        xrandr --output $external --auto --same-as $internal
        ;;
esac
