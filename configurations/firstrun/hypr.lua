hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("QT_QPA_PLATFORMTHEME", "lxqt")
hl.env("QT_PLATFORM_PLUGIN","lxqt")
hl.env("XDG_MENU_PREFIX","lxqt-")

hl.on("hyprland.start", function ()
   hl.exec_cmd("swaybg -i /usr/share/lxqt/wallpapers/origami-dark.png")
   hl.exec_cmd("lxqt-notificationd")
   hl.exec_cmd("notify-send -a 'Welcome to LXQt - Wayland Session' -i dialog-information -t 30000 'No compositor is selected, please choose one in Wayland Settings.' 'The session will be restarted after closing the window.' ")
   hl.exec_cmd("lxqt-config-session && hyprctl dispatch 'hl.dsp.exit()'")
 end)

hl.window_rule({ match = { class = "^(lxqt-.*|pavu.*|.*copyq|sddm-conf|qarma|.*portal-lxqt)$" }, float = true })

hl.config({
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
        disable_xdg_env_checks = true,
    },
})
