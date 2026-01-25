function ls --wraps=lsd --wraps='lsd -a' --description 'alias ls=lsd -a'
    lsd -a $argv
end
