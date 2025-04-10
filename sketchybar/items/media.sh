#!/bin/bash

sketchybar --add item media e \
    --set media label.color=$WHITE \
    label.max_chars=20 \
    icon.padding_left=0 \
    icon.padding_right=20 \
    scroll_texts=on \
    icon=􀑪 \
    icon.color=$WHITE \
    background.drawing=off \
    script="$PLUGIN_DIR/media.sh" \
    --subscribe media media_change
