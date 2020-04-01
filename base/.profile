# Profile file. Runs on login. Environmental variables are set here.

# Default programs:
export WM="bspwm"
export BAR="polybar"
export VISUAL="nano"
export EDITOR="nano"
export TERMINAL="uxvrt"

# Start graphical server on tty1 if not already running.
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
