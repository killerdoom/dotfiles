#!/bin/sh

VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}')

if wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED; then
  echo " "
else
  echo "  ${VOL}% "
fi
