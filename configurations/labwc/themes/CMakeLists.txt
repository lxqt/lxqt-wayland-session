# install openbox themes
install(DIRECTORY
    Vent
    Vent-dark
    DESTINATION "${CMAKE_INSTALL_DATADIR}/themes"
    COMPONENT Runtime
)
