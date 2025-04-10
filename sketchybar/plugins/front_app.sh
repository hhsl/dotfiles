#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
  # https://github.com/kvndrsslr/sketchybar-app-font
  source $CONFIG_DIR/scripts/icon_map_fn.sh
  __icon_map "${INFO}"

  sketchybar --set $NAME label="$INFO" icon="${icon_result}"
fi
