### Aerospace integration
sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do  
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=0x44ffffff \
        background.corner_radius=5 \
        background.height=20 \
        background.drawing=off \
        icon=$sid \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

# sketchybar --add item space_separator left \
#     --set space_separator icon="􀆊" \
#     icon.color=$WHITE \
#     icon.padding_left=4 \
#     label.drawing=off \
#     background.drawing=off \
#     script="$PLUGIN_DIR/space_windows.sh" \
#     --subscribe space_separator aerospace_workspace_change