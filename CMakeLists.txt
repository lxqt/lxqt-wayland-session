cmake_minimum_required(VERSION 3.18.0 FATAL_ERROR)
# CMP0000: Call the cmake_minimum_required() command at the beginning of the top-level
# CMakeLists.txt file even before calling the project() command.
# The cmake_minimum_required(VERSION) command implicitly invokes the cmake_policy(VERSION)
# command to specify that the current project code is written for the given range of CMake
# versions.
project(lxqt-wayland-session)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(GNUInstallDirs)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Minimum Versions
set(LXQT_MINIMUM_VERSION "2.1.0")

find_package(lxqt ${LXQT_MINIMUM_VERSION} REQUIRED)
find_package(PkgConfig REQUIRED)

# Please don't move, must be after lxqt
find_package(XdgUserDirs REQUIRED)

set(LXQT_WAYLAND_SESSION_MAJOR_VERSION 0)
set(LXQT_WAYLAND_SESSION_MINOR_VERSION 1)
set(LXQT_WAYLAND_SESSION_PATCH_VERSION 0)
set(LXQT_WAYLAND_SESSION_VERSION ${LXQT_WAYLAND_SESSION_MAJOR_VERSION}.${LXQT_WAYLAND_SESSION_MINOR_VERSION}.${LXQT_WAYLAND_SESSION_PATCH_VERSION})

include(LXQtPreventInSourceBuilds)
include(LXQtCompilerSettings NO_POLICY_SCOPE)

# Translations **********************************
include(LXQtTranslate)

# merged from lxqt-common
include(LXQtConfigVars)

# startlxqtwayland script
set(PREDEF_XDG_DATA_DIRS "$XDG_DATA_HOME")
if(NOT("${LXQT_DATA_DIR}" MATCHES "^/usr(/local)?/share$"))
    set(PREDEF_XDG_DATA_DIRS "${PREDEF_XDG_DATA_DIRS}:${LXQT_DATA_DIR}")
endif()
set(PREDEF_XDG_DATA_DIRS "${PREDEF_XDG_DATA_DIRS}:/usr/local/share:/usr/share")
set(PREDEF_XDG_CONFIG_DIRS "/etc:${LXQT_ETC_XDG_DIR}:/usr/share")
configure_file(startlxqtwayland.in startlxqtwayland @ONLY)
install(PROGRAMS
    "${CMAKE_CURRENT_BINARY_DIR}/startlxqtwayland"
    DESTINATION "${CMAKE_INSTALL_BINDIR}"
    COMPONENT Runtime
)
#install(FILES /// evt. TODO manpage
#    startlxqt.1
#    DESTINATION "${CMAKE_INSTALL_MANDIR}/man1"
#    COMPONENT Runtime
#)

add_subdirectory(configurations)
add_subdirectory(wallpaper)
add_subdirectory(labwc-themes)

# *.desktop file for display managers
add_subdirectory(waylandsession)
