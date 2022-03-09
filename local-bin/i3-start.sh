#!/bin/bash
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
/sbin/i3
