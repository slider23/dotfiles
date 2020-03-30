#!/bin/sh

# xinitrc runs automatically when you run startx.

# There are some small but important commands that need to be run when we start
# the graphical environment. I keep those commands in ~/.xprofile because that
# file is run automatically if someone uses a display manager (login screen)
# and so they are needed there. To prevent doubling up commands, I source them
# here with the line below.

[ -f ~/.xprofile ] && . ~/.xprofile

# Your default LARBS WM is determined in your `~/.profile` on login.  Here we
# run the proper command to run when the graphical environment starts.

# disable bell sound
xset b off

# autorepeat:
# delay before autorepeat = 200ms
# repeat rate = 50ms
xset r rate 150 50

# set keyboard layout
setxkbmap -layout us,ru
setxkbmap -option "caps:swapescape"


# exec i3
exec bspwm
