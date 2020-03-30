# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs:
export VISUAL="nano"
export EDITOR="nano"
export TERMINAL="st"
export BROWSER="brave"
export READER="zathura"
export STATUSBAR="polybar"

# ~/ Clean-up:
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
export ZDOTDIR="$HOME/.config/zsh"

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# Switch escape and caps if tty and no passwd required:
sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null
