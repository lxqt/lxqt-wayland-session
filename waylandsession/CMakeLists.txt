file(GLOB SESSION_FILES_IN *.desktop.in)

# Translations **********************************
lxqt_translate_desktop(SESSION_FILES
    SOURCES
        ${SESSION_FILES_IN}
    USE_YAML
)
add_custom_target(waylandsession_desktop_files ALL DEPENDS ${SESSION_FILES})
#************************************************

MACRO(INSTALL_SESSION_FILES directory)
    install(FILES
            ${SESSION_FILES}
            DESTINATION "${directory}"
            COMPONENT Runtime
    )
ENDMACRO(INSTALL_SESSION_FILES)

INSTALL_SESSION_FILES("${CMAKE_INSTALL_DATAROOTDIR}/wayland-sessions")

