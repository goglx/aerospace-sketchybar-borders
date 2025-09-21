#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

source colors.sh

if [ "$SENDER" = "front_app_switched" ]; then
  #sketchybar --set "$NAME" label="$INFO" label.color=$WHITE background.color=$HIGHLIGHT_BACKGROUND
  sketchybar --set $NAME label="$INFO" \
    label.shadow.drawing=off \
    icon.shadow.drawing=off \
    background.color=$BAR_COLOR \
    background.border_color=$MAGENTA \
    background.border_width=2 \
    background.corner_radius=5 \
    background.padding_right=5 \
    background.padding_left=5 \
    background.height=27 \
    label.padding_right=10 \
    label.padding_left=10 \
    label.color=$GREY \
    label.shadow.drawing=off
fi
