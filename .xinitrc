#!/bin/sh

# Teclado
xset r rate 400 30 &
setxkbmap es &

# Wallpaper
feh --bg-fill ~/dotfiles/tyler-lastovich-hM08wZJBlK4-unsplash.jpg &

# Compositor
picom &

# SLStatus
slstatus &

# Cosas
xsetroot -cursor_name left_ptr &
nm-applet &
flameshot &
dunst &
xsettingsd &

# Pipewire

sleep 0.5 && pipewire &
sleep 0.5 && pipewire-pulse &
sleep 0.5 && wireplumber &

# Barra
 sleep 0.5 && polybar &

# WM
exec dbus-run-session xmonad 2> xmonad-start.log
