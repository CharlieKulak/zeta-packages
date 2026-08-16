return {
  name    = "hyprland-qtutils",
  version = "0.1.5",
  summary = "Qt6/QML utilities for the Hyprland ecosystem",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprland-qtutils/hyprland-qtutils-0.1.5.tar.gz",
  sha256  = "b09d8616790b07fad9e0abbb4d92365cb7ecf48da12077ab244dc87261124ceb",
  deps    = { "hyprland-qt-support", "hyprutils", "hyprcursor", "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyprland-dialog -a -x " .. p.install_root .. "/usr/bin/hyprland-update-screen")
  end,
}
