# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:~/.local/bin:/usr/local/games:/usr/local/bin:/home/znorvik/Zig:/home/znorvik/.local/bin"

alias ls='lsd --color=auto'
alias l='lsd -a --color=auto'
alias lc='clear ; lsd -a'
alias ll='clear ; lsd -la --color=auto'
alias grep='grep --color=auto'
alias xcopy='xclip -selection clipboard'
alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias c='clear'
alias liberar='sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias actualizar='sudo xbps-install -Su && sudo pacman -Syu -dd --overwrite '/*' '
alias fetch='fastfetch --logo void2_small --config /home/znorvik/.config/fastfetch/screenfetch.jsonc'
PS1='[\h \W]
> '
