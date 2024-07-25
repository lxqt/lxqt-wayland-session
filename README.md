# lxqt-wayland-session
Files needed for the LXQt Wayland Session: wayland session start script, its desktop entry for
display managers and default configurations for supported compositors which actually are:

* Labwc
* Wayfire
* kwin_wayland
* Sway
* Hyprland

At startup default configuration files for compositors will be copied to `$XDG_CONFIG_HOME/lxqt/wayland` directory
if not existing, except for labwc and `kwin_wayland` where their default configuration location is used. In `lxqt-config-session` a "Wayland Settings" page will be enabled. By default no compositor is set and if empty a session with a temporary setting for labwc is used, showing a notification about choosing a compositor.


![Wayland Settings](lxqt-config-session.png)


### Other compositors

Any wlroots-based compositor should work. The line `lxqt-session && <exit_command>` is needed in the autostart section of the compositor.

### Compiling source code

Runtime dependencies are [liblxqt](https://github.com/lxqt/liblxqt)and [lxqt-session](https://github.com/lxqt/lxqt-session).
Additional build dependencies are CMake and optionally Git to pull latest VCS checkouts.

Code configuration is handled by CMake. CMake variable `CMAKE_INSTALL_PREFIX` has to be set
to `/usr` on most operating systems.  

To build run `make`, to install `make install` which accepts variable `DESTDIR` as usual.



