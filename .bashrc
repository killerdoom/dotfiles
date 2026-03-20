# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:~/.local/bin:/usr/local/games:/usr/local/bin:/home/znorvik/zig-x86_64-linux-0.15.2/zig-x86_64-linux-0.15.2"

alias ls='lsd --color=auto'
alias l='lsd -a --color=auto'
alias lc='clear && lsd -a'
alias ll='lsd -la --color=auto'
alias xi='sudo xbps-install'
alias c='clear'
alias liberar='sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias fetch='fastfetch --logo void2'
PS1='[\h \W]
> '
