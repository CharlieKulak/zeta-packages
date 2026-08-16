return {
  name    = "hyprland-qt-support",
  version = "0.1.0",
  summary = "Helper library for Hyprland Qt apps",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprland-qt-support/hyprland-qt-support-0.1.0.tar.gz",
  sha256  = "fa69478c54a8cd3367a3c43e6a6c6e704bfaf9ea082e6986d707f5d97c756f4f",
  deps    = { "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhyprland-quick-style.so -a -d " .. p.install_root .. "/usr/lib/qt6/qml/org/hyprland/style")
  end,
}
