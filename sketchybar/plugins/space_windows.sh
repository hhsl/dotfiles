#!/bin/bash

source $CONFIG_DIR/scripts/icon_map_fn.sh

if [ "$SENDER" = "space_windows_change" ]; then
    space="$(echo "$INFO" | jq -r '.space')"
    apps="$(echo "$INFO" | jq -r '.apps | keys[]')"

    icon_strip=" "
    if [ "${apps}" != "" ]; then
        while read -r app; do
            __icon_map "$app"
            icon_strip+=" ${icon_result}"
        done <<<"${apps}"
    else
        icon_strip=" —"
    fi

    sketchybar --set space.$space label="$icon_strip"
fi
