-- cvos Hyprland keybind defaults

terminal = "kitty"
browser = "helium"
fileManager = "thunar"

bind = {
    "SUPER, RETURN, exec, ${terminal}",
    "SUPER SHIFT, RETURN, exec, ${browser}",
    "SUPER SHIFT, F, exec, ${fileManager}",
    "SUPER SHIFT, B, exec, ${browser}",

    "SUPER, Q, killactive,",
    "SUPER, F, fullscreen, 0",
    "SUPER ALT, F, fullscreen, 1",
    "SUPER, T, togglefloating,",
    "SUPER, J, layoutmsg, togglesplit",
    "SUPER, P, pseudo,",
    "SUPER, G, togglegroup,",
    "SUPER, S, togglespecialworkspace, scratchpad",
    "SUPER, grave, togglespecialworkspace, scratchpad",
    "SUPER ALT, S, movetoworkspacesilent, special:scratchpad",
    "SUPER SHIFT, grave, movetoworkspacesilent, special:scratchpad",

    "SUPER, left, movefocus, l",
    "SUPER, right, movefocus, r",
    "SUPER, up, movefocus, u",
    "SUPER, down, movefocus, d",
    "ALT, TAB, cyclenext,",
    "ALT SHIFT, TAB, cyclenext, prev",
    "CTRL ALT, TAB, focusmonitor, +1",
    "CTRL ALT SHIFT, TAB, focusmonitor, -1",

    "SUPER SHIFT, left, swapwindow, l",
    "SUPER SHIFT, right, swapwindow, r",
    "SUPER SHIFT, up, swapwindow, u",
    "SUPER SHIFT, down, swapwindow, d",

    "SUPER, code:10, workspace, 1",
    "SUPER, code:11, workspace, 2",
    "SUPER, code:12, workspace, 3",
    "SUPER, code:13, workspace, 4",
    "SUPER, code:14, workspace, 5",
    "SUPER, code:15, workspace, 6",
    "SUPER, code:16, workspace, 7",
    "SUPER, code:17, workspace, 8",
    "SUPER, code:18, workspace, 9",
    "SUPER, code:19, workspace, 10",
    "SUPER SHIFT, code:10, movetoworkspace, 1",
    "SUPER SHIFT, code:11, movetoworkspace, 2",
    "SUPER SHIFT, code:12, movetoworkspace, 3",
    "SUPER SHIFT, code:13, movetoworkspace, 4",
    "SUPER SHIFT, code:14, movetoworkspace, 5",
    "SUPER SHIFT, code:15, movetoworkspace, 6",
    "SUPER SHIFT, code:16, movetoworkspace, 7",
    "SUPER SHIFT, code:17, movetoworkspace, 8",
    "SUPER SHIFT, code:18, movetoworkspace, 9",
    "SUPER SHIFT, code:19, movetoworkspace, 10",
    "SUPER SHIFT ALT, code:10, movetoworkspacesilent, 1",
    "SUPER SHIFT ALT, code:11, movetoworkspacesilent, 2",
    "SUPER SHIFT ALT, code:12, movetoworkspacesilent, 3",
    "SUPER SHIFT ALT, code:13, movetoworkspacesilent, 4",
    "SUPER SHIFT ALT, code:14, movetoworkspacesilent, 5",
    "SUPER SHIFT ALT, code:15, movetoworkspacesilent, 6",
    "SUPER SHIFT ALT, code:16, movetoworkspacesilent, 7",
    "SUPER SHIFT ALT, code:17, movetoworkspacesilent, 8",
    "SUPER SHIFT ALT, code:18, movetoworkspacesilent, 9",
    "SUPER SHIFT ALT, code:19, movetoworkspacesilent, 10",
    "SUPER, TAB, workspace, e+1",
    "SUPER SHIFT, TAB, workspace, e-1",
    "SUPER CTRL, TAB, workspace, previous",
    "SUPER, mouse_down, workspace, e+1",
    "SUPER, mouse_up, workspace, e-1",
    "SUPER SHIFT ALT, left, movecurrentworkspacetomonitor, l",
    "SUPER SHIFT ALT, right, movecurrentworkspacetomonitor, r",
    "SUPER SHIFT ALT, up, movecurrentworkspacetomonitor, u",
    "SUPER SHIFT ALT, down, movecurrentworkspacetomonitor, d",

    "SUPER ALT, G, moveoutofgroup,",
    "SUPER ALT, left, moveintogroup, l",
    "SUPER ALT, right, moveintogroup, r",
    "SUPER ALT, up, moveintogroup, u",
    "SUPER ALT, down, moveintogroup, d",
    "SUPER ALT, TAB, changegroupactive, f",
    "SUPER ALT SHIFT, TAB, changegroupactive, b",
    "SUPER CTRL, left, changegroupactive, b",
    "SUPER CTRL, right, changegroupactive, f",

    "SUPER, code:20, resizeactive, -100 0",
    "SUPER, code:21, resizeactive, 100 0",
    "SUPER SHIFT, code:20, resizeactive, 0 -100",
    "SUPER SHIFT, code:21, resizeactive, 0 100",
    "SUPER ALT, code:20, resizeactive, -25 0",
    "SUPER ALT, code:21, resizeactive, 25 0",
    "SUPER SHIFT ALT, code:20, resizeactive, 0 -25",
    "SUPER SHIFT ALT, code:21, resizeactive, 0 25",
    "SUPER CTRL, code:20, resizeactive, -300 0",
    "SUPER CTRL, code:21, resizeactive, 300 0",
    "SUPER CTRL SHIFT, code:20, resizeactive, 0 -300",
    "SUPER CTRL SHIFT, code:21, resizeactive, 0 300",

    ", PRINT, exec, grim -g \"$(slurp)\" - | swappy -f -",
    "SUPER, PRINT, exec, pkill hyprpicker || hyprpicker -a",
    "SUPER CTRL, L, exec, hyprlock",
}

bindm = {
    "SUPER, mouse:272, movewindow",
    "SUPER, mouse:273, resizewindow",
}

bindel = {
    ", XF86AudioRaiseVolume, exec, pamixer -i 5",
    ", XF86AudioLowerVolume, exec, pamixer -d 5",
    ", XF86MonBrightnessUp, exec, brightnessctl set +5%",
    ", XF86MonBrightnessDown, exec, brightnessctl set 5%-",
}

bindl = {
    ", XF86AudioMute, exec, pamixer -t",
    ", XF86AudioPlay, exec, playerctl play-pause",
    ", XF86AudioNext, exec, playerctl next",
    ", XF86AudioPrev, exec, playerctl previous",
}
