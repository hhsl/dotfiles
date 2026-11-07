#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
#

SID="$1"

# Resolve aerospace binary path (sketchybar runs with minimal PATH)
if [ -x "/opt/homebrew/bin/aerospace" ]; then
  AEROSPACE="/opt/homebrew/bin/aerospace"
elif [ -x "/usr/local/bin/aerospace" ]; then
  AEROSPACE="/usr/local/bin/aerospace"
elif command -v aerospace >/dev/null 2>&1; then
  AEROSPACE="$(command -v aerospace)"
else
  exit 1
fi

source $CONFIG_DIR/scripts/icon_map_fn.sh

apps="$(aerospace list-windows --workspace ${1} | cut -d'|' -f2)"
icon_strip=" "
if [ "${apps}" != "" ]; then
  while read -r app; do
    __icon_map "$app"
    icon_strip+=" ${icon_result}"
  done <<<"${apps}"
else
  icon_strip=" —"
fi

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on \
    label.font="sketchybar-app-font:Regular:16.0" \
    label.padding_right=20 \
    label.y_offset=-1 \
    label="$icon_strip"
else
  sketchybar --set $NAME background.drawing=off \
    label.font="sketchybar-app-font:Regular:16.0" \
    label.padding_right=20 \
    label.y_offset=-1 \
    label="$icon_strip"
fi
