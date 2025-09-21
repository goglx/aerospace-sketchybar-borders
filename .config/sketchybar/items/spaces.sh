#!/usr/bin/env sh

sketchybar --add event aerospace_workspace_change

: '
for sid in $(aerospace list-workspaces --all); do
#for sid in $(aerospace list-workspaces --monitor all --empty no); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=0x44ffffff \
        background.corner_radius=5 \
        background.height=20 \
        background.drawing=off \
        label="$sid" \
        click_script="aerospace workspace $sid" \
        script="$PLUGIN_DIR/aerospacer.sh $sid"
done
'

for sid in $(aerospace list-workspaces --monitor all); do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    drawing=off \
    background.corner_radius=5 \
    background.drawing=on \
    background.border_width=1 \
    background.height=25 \
    background.padding_right=5 \
    background.padding_left=5 \
    icon="$sid" \
    icon.shadow.drawing=off \
    icon.padding_left=10 \
    label.font="sketchybar-app-font:Regular:17.0" \
    label.padding_right=20 \
    label.padding_left=0 \
    label.y_offset=-1 \
    label.shadow.drawing=off \
    click_script="aerospace workspace $sid" \
    script="$PLUGIN_DIR/aerospacer.sh $sid"
done

for sid in $(aerospace list-workspaces --monitor all --empty no); do
  apps=$(aerospace list-windows --workspace "$sid" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

  sketchybar --set space.$sid drawing=on

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app; do
      icon_strip+=" $($PLUGIN_DIR/icon_map_fn.sh "$app")"
    done <<<"${apps}"
  else
    icon_strip=""
  fi
  sketchybar --set space.$sid label="$icon_strip"
done
