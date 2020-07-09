# alias cp="cp -i"                                                # Confirm before ovrwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'

PATH=/snap/bin/:$PATH
PATH=~/.scripts/:$PATH

alias ni3='nano ~/.config/i3/config'
alias nxd='nano ~/.Xdefaults'
alias nxr='nano ~/.Xresources'
alias ninit='nano ~/.xinitrc'

alias cp='cp -i -r'
alias scp='scp -r'
alias rm='rm -r'
alias mkdir='mkdir -p'

alias ls='ls -F --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -l --color=auto -h'
alias lla='ll -A --color=auto -h'
alias grep='grep --colour=auto'

alias work='cd ~/work'
alias home='cd ~'
alias win='cd /mnt/c/Users/mickael'
alias sites='cd /mnt/c/Sites'
alias dot='cd ~/.dotfiles'

export DOCKER_HOST_IP=$(route -n | awk '/UG[ \t]/{print $2}')
alias dry='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -e DOCKER_HOST=$DOCKER_HOST_IP moncho/dry'
alias lzd='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v ~/.config/lazydocker/config:/.config/jesseduffield/lazydocker lazyteam/lazydocker'
#alias nano='micro'


