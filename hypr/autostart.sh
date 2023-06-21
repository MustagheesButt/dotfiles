#!/usr/bin/bash

# variables
config=$HOME/.config/hypr
scripts=$config/../waybar/scripts

# notification daemon
dunst &

# waybar
waybar &
$scripts/tools/dynamic &

# wallpaper
$scripts/wall $HOME/.config/wallpapers/antoinette-stoll-34.jpg

# effects
$scripts/rgb &

# other
# Allow GUIs to ask for sudo permission (eg. when a file manager needs to mount a disk)
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# For screensharing (This will make sure that xdg-desktop-portal-wlr can get the required variables on startup)
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
