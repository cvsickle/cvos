-- cvos Hyprland autostart defaults

exec_once = {
    "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP HYPRLAND_INSTANCE_SIGNATURE",
    "dbus-update-activation-environment --systemd --all",
    "/usr/share/cvos/bin/cvos-launch-shell",
    "hyprpaper",
    "hypridle",
    "/usr/libexec/hyprpolkitagent",
    "nm-applet --indicator",
    "blueman-applet",
    "wl-paste --watch cliphist store",
}
