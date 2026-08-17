return {
  name    = "hyprland",
  version = "0.56.2",
  summary = "Dynamic tiling Wayland compositor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprland/hyprland-0.56.2.tar.gz",
  sha256  = "dec899e71582f22d187244f8cbca17f0a861a2b72b62d22d4a9aa55feb59dff8",
  deps    = { "aquamarine", "hyprcursor", "hyprgraphics", "hyprlang", "hyprutils", "hyprland-protocols", "glslang", "spirv-tools", "re2", "tomlplusplus", "libei", "wayland", "wayland-protocols", "xkbcommon", "libinput", "libdisplay-info", "mesa", "libglvnd", "libdrm", "pixman", "pango", "cairo", "glib", "gdk-pixbuf", "librsvg", "glycin", "lcms2", "libjpeg-turbo", "libwebp", "dav1d", "harfbuzz", "freetype", "fontconfig", "fribidi", "libX11", "libXext", "libXfixes", "libXrender", "libXau", "libXdmcp", "libxcb", "xcb-util", "libXcursor", "libudev", "libevdev", "libmtdev", "libwacom", "libgudev", "libuuid", "libz", "zstd", "xz-utils", "openssl", "file", "muparser", "libzip", "libseccomp", "seatd", "dbus", "xwayland", "xdg-desktop-portal", "xdg-desktop-portal-hyprland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/Hyprland -a -x " .. p.install_root .. "/usr/bin/hyprctl")
  end,
}
