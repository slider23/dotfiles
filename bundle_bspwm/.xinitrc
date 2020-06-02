#!/bin/sh
# xinitrc runs automatically when you run startx.

[ -f ~/.xprofile ] && . ~/.xprofile

# start the statusbar
$BAR &

# exec i3
exec $WM
