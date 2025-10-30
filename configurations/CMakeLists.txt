# install default config files to /usr/share/lxqt/wayland

install(FILES
    lxqt-hyprland.conf
    lxqt-wayfire.ini
    lxqt-sway.config
    lxqt-river-init
    lxqt-niri.kdl
    DESTINATION "${CMAKE_INSTALL_DATADIR}/lxqt/wayland"
    COMPONENT Runtime
)
install(FILES
    lxqt-labwc.png
    DESTINATION "${LXQT_SHARE_DIR}/graphics"
    COMPONENT Runtime
)
install(DIRECTORY
    labwc
    firstrun
    miriway
    USE_SOURCE_PERMISSIONS
    DESTINATION "${CMAKE_INSTALL_DATADIR}/lxqt/wayland"
    COMPONENT Runtime
)
