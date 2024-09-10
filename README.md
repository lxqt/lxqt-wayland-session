# lxqt-wayland-session
Files needed for the LXQt Wayland Session: Wayland session start script, its desktop entry for
display managers and default configurations for actually supported compositors which are:

* Stacking WMs
    * Labwc (version 0.7.2 and higher)
    * Wayfire
    * kwin_wayland
  
* Tiling Wms
    * Hyprland
    * river
    * Sway
  
At startup a basic configuration file for those compositors will be copied to `$XDG_CONFIG_HOME/lxqt/wayland` directory
if not existing already, except for labwc and `kwin_wayland` where their default configuration location is used.
If no compositor is already set in `lxqt-config-session` Labwc will be started opening "Session Settings".

Please refer to each compositors documentation for tweaking.

### Other compositors

Any compositor should work in general, but for a working taskbar `wlr-foreign-toplevel-management-unstable-v1` protocol support is mandatory.
A line `lxqt-session && <exit_compositor_command>` is needed in the autostart section of the compositor.

### Compiling source code

Runtime dependencies are [liblxqt](https://github.com/lxqt/liblxqt), [qtxdg-tools](https://github.com/lxqt/qtxdg-tools),
[lxqt-session](https://github.com/lxqt/lxqt-session) and layer-shell-qt.
Additional build dependencies are CMake and optionally Git to pull latest VCS checkouts.

Code configuration is handled by CMake. CMake variable `CMAKE_INSTALL_PREFIX` has to be set
to `/usr` on most operating systems.  

To build run `make`, to install `make install` which accepts variable `DESTDIR` as usual.



