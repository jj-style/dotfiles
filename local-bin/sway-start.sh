#!/bin/bash
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
export SSH_AUTH_SOCK

# other session wide environment variables set here
export LIBGL_ALWAYS_SOFTWARE=1
export MOZ_ENABLE_WAYLAND=1

/sbin/sway --unsupported-gpu
