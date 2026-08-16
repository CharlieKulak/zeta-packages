return {
  name    = "niri",
  version = "26.04",
  summary = "Scrollable-tiling Wayland compositor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/niri/niri-26.04.tar.gz",
  sha256  = "8b443a72f843b2b9ffec5b7c244329f5e6ec848621fa3fe455bd34fe90e7179d",
  deps    = { "xwayland-satellite", "wayland", "xkbcommon", "libinput", "libdisplay-info", "mesa", "seatd", "pixman", "libdrm", "libudev", "libevdev", "libmtdev", "libwacom", "pango", "cairo", "glib", "dbus", "xdg-desktop-portal", "gsettings-desktop-schemas" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/niri -a -x " .. p.install_root .. "/usr/bin/niri-session -a -f " .. p.install_root .. "/usr/share/wayland-sessions/niri.desktop")
  end,
}
