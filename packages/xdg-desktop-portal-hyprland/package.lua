return {
  name    = "xdg-desktop-portal-hyprland",
  version = "1.4.1",
  summary = "XDG Desktop Portal backend for Hyprland (and wlroots)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xdg-desktop-portal-hyprland/xdg-desktop-portal-hyprland-1.4.1.tar.gz",
  sha256  = "b4ffc97b5ddf22412a6437ac864a4e88b544873d41cd9cbdd180eca228f60a74",
  deps    = { "hyprlang", "hyprutils", "hyprwayland-scanner", "hyprland-protocols", "sdbus-cpp", "pipewire", "libdrm", "wayland", "qtbase", "xdg-desktop-portal" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal-hyprland -a -x " .. p.install_root .. "/usr/bin/hyprland-share-picker")
  end,
}
