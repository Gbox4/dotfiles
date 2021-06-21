autorandr --change
wal -R
xrdb -merge ~/.Xresources
xbindkeys
picom &
sxhkd &
exec /home/gabe/bin/bspwm-rounded
#exec bspwm