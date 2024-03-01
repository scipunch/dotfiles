#!/usr/bin/env bash

handle() {
case $1 in
    workspace*|destroyworkspace*|createworkspace*|openwindow*|closewindow*)
    hyprctl activeworkspace | grep -E 'windows: (1)' && hyprctl keyword general:border_size 0 || hyprctl reload ;;
esac
}
socat -U - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done