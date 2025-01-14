# install manpages

install(FILES
    lxqt-wayland-session.1
    startlxqtwayland.1
    DESTINATION "${CMAKE_INSTALL_MANDIR}/man1"
    COMPONENT Runtime
)
