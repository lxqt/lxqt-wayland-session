# lxqt-wayland
Files needed for the LXQt Wayland Session: wayland session start script, its desktop entry for
display managers and default configurations for actually supported compositors which are:

* Labwc
* Wayfire
* kwin_wayland
* Sway
* Hyprland


### Compiling source code

Runtime dependencies are xdg-user-dirs, [liblxqt](https://github.com/lxqt/liblxqt), [qtxdg-tools](https://github.com/lxqt/qtxdg-tools) and layer-shell-qt.
Additional build dependencies are CMake and optionally Git to pull latest VCS checkouts.

Code configuration is handled by CMake. CMake variable `CMAKE_INSTALL_PREFIX` has to be set to `/usr` on most operating systems.  

To build run `make`, to install `make install` which accepts variable `DESTDIR` as usual.  
