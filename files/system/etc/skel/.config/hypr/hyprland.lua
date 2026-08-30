-- User-local Hyprland config. Keep overrides in ~/.config/hypr and
-- source the local stub files instead of the packaged defaults.

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

source = "~/.config/hypr/looknfeel.lua"
source = "~/.config/hypr/input.lua"
source = "~/.config/hypr/monitors.lua"
source = "~/.config/hypr/autostart.lua"
source = "~/.config/hypr/bindings.lua"
