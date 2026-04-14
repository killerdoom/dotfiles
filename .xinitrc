#!/bin/sh

# Teclado
setxkbmap es &
xset r rate 400 30 &

# Wallpaper
feh --bg-fill ~/dotfiles/wallhaven-k9m1vq.png &

# SLStatus
slstatus &

# Cosas
nm-applet &
flameshot &
dunst &

sleep 0.5 && pipewire &
sleep 0.5 && pipewire-pulse &
sleep 0.5 && wireplumber &

# WM
exec dbus-run-session dwm
