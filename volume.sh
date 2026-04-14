#!/bin/sh

SINK=$(pactl get-default-sink)

VOL=$(pactl get-sink-volume "$SINK" | head -n1 | awk '{print $5}')
MUTE=$(pactl get-sink-mute "$SINK" | awk '{print $2}')

if [ "$MUTE" = "yes" ]; then
    echo " "
else
    echo "   $VOL"
fi
