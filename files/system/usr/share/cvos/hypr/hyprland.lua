-- cvos Hyprland defaults. User configs should source this file, then
-- optionally source local override fragments.

terminal = "kitty"
browser = "helium"
fileManager = "thunar"
cvosShare = "/usr/share/cvos"

env = {
    XDG_CURRENT_DESKTOP = "Hyprland",
    XDG_SESSION_TYPE = "wayland",
    XDG_SESSION_DESKTOP = "Hyprland",
    QT_QPA_PLATFORM = "wayland;xcb",
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1",
    GDK_BACKEND = "wayland,x11",
    MOZ_ENABLE_WAYLAND = "1",
}

source = "/usr/share/cvos/hypr/looknfeel.lua"
source = "/usr/share/cvos/hypr/input.lua"
source = "/usr/share/cvos/hypr/monitors.lua"
source = "/usr/share/cvos/hypr/autostart.lua"
source = "/usr/share/cvos/hypr/bindings.lua"
