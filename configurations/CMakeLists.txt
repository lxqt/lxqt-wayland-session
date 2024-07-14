# install default config files to /usr/share/lxqt/wayland

install(FILES
    lxqt-hyprland.conf
    lxqt-wayfire.ini
    lxqt-sway.config
    DESTINATION "${CMAKE_INSTALL_DATADIR}/lxqt/wayland"
    COMPONENT Runtime
)
install(DIRECTORY
    labwc
    firstrun
    DESTINATION "${CMAKE_INSTALL_DATADIR}/lxqt/wayland"
    COMPONENT Runtime
)
