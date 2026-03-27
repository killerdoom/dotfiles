#!/bin/sh

# Módulo WirePlumber para Polybar

case "$1" in
    --up)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
        ;;
    --down)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
        ;;
    --toggle)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        ;;
    *)
        # Estado actual
        VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}')
        MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o "MUTED")

        if [ -n "$MUTED" ]; then
            ICON="󰖁"   # mute icon (nerd font)
            echo "%{F#ff5555}$ICON $VOLUME%%{F-}"
        else
            if [ "$VOLUME" -ge 70 ]; then
                ICON="󰕾"   # high volume
            elif [ "$VOLUME" -ge 30 ]; then
                ICON="󰖀"   # medium
            else
                ICON="󰕿"   # low
            fi
            echo "$ICON $VOLUME%"
        fi
        ;;
esac
