# lxqt-wayland-session
Files needed for the LXQt Wayland Session: Wayland session start script, its desktop entry for
display managers and default configurations for actually supported compositors which are:

* Stacking WMs
    * Labwc (version 0.7.2 and higher)
    * Wayfire
    * kwin_wayland
  
* Tiling Wms
    * Hyprland
    * Niri
    * river
    * Sway
  
At startup a basic configuration file for those compositors will be copied to `$XDG_CONFIG_HOME/lxqt/wayland` directory
if not existing already, except for labwc and `kwin_wayland` where their default configuration location is used.
If no compositor is already set in `lxqt-config-session` Labwc will be started opening "Session Settings".

Please refer to each compositors documentation for tweaking.

### Other compositors

Any compositor  which supports at least `wlr-layer-shell-unstable-v1` and (for taskbar)`wlr-foreign-toplevel-management-unstable-v1` protocols should work.
A line `lxqt-session && <exit_compositor_command>` is needed in the autostart configuration of the compositor.

### Compiling source code

Runtime dependencies are [qtxdg-tools](https://github.com/lxqt/qtxdg-tools),
[lxqt-session](https://github.com/lxqt/lxqt-session) and layer-shell-qt.
Additional build dependencies are [lxqt-build-tools](https://github.com/lxqt/lxqt-build-tools), CMake and optionally Git to pull latest VCS checkouts.

Code configuration is handled by CMake. CMake variable `CMAKE_INSTALL_PREFIX` has to be set
to `/usr` on most operating systems.  

To build run `make`, to install `make install` which accepts variable `DESTDIR` as usual.

### License

This project is licensed under the GNU Lesser General Public License v2.1. However, some files (e.g., files in the `/configurations` directory) are licensed under different licenses. See LICENSE for details.
