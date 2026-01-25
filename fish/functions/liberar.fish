function liberar --wraps='sync && echo 3 | sudo tee /proc/sys/vm/drop_caches' --description 'alias liberar=sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'
    sync && echo 3 | sudo tee /proc/sys/vm/drop_caches $argv
end
