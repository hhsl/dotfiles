#!/bin/bash

sketchybar --add item front_app left \
    --set front_app background.color=$WHITE \
    icon.color=0xee000000 \
    icon.font="sketchybar-app-font:Regular:16.0" \
    label.color=0xee000000 \
    script="$PLUGIN_DIR/front_app.sh" \
    --subscribe front_app front_app_switched
