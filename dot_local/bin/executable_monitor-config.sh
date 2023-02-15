#!/bin/bash

internal="eDP1"
external="HDMI1"

externalD1="DP1-1"
externalD2="DP1-2"

case "$1" in
    "disconnect")
        xrandr | grep connected | awk -v internal="$internal" '{if ($1 != internal) {print $1}}' | xargs -I _ echo "--output _ --off" | xargs xrandr
        ;;
    "extend")
        xrandr --output $external --auto --right-of $internal
        ;;
    "mirror")
        xrandr --output $external --auto --same-as $internal
        ;;
    "dock1")
        xrandr --output $externalD1 --auto --right-of $internal
        ;;
    "dock2")
        xrandr --output $externalD1 --auto --right-of $internal
        xrandr --output $externalD2 --auto --left-of $internal
        ;;
    "dock3")
        xrandr --verbose --output $externalD1 --auto --right-of $internal
        xrandr --output $externalD2 --auto --rotate right --left-of $internal
        ;;
esac
