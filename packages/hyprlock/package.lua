return {
  name    = "hyprlock",
  version = "0.9.6",
  summary = "Hyprland's GPU-accelerated lock screen",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprlock/hyprlock-0.9.6.tar.gz",
  sha256  = "b27402db99e9a4762a4855112a8ed7c83be7ff221445e9538a73778cfd3e83f3",
  deps    = { "hyprland-qt-support", "hyprcursor", "hyprgraphics", "hyprlang", "hyprutils", "hyprwayland-scanner", "sdbus-cpp", "linux-pam", "libdrm", "wayland", "cairo", "pango", "xkbcommon", "qtbase", "qtdeclarative", "qtwayland", "mesa" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyprlock")
  end,
}
