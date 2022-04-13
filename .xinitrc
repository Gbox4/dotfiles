#!/bin/bash

autorandr --change
#wal -R
~/.fehbg &
xrdb ~/.Xresources
xbindkeys
xset r rate 200 30
#mopidy &
pkill mpd
mpd /home/gabe/.config/mpd/mpd.conf
picom &
sxhkd &
#exec /home/gabe/bin/bspwm-rounded
touchegg &
nm-applet &

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

#touch ~/startup.lock
exec bspwm
