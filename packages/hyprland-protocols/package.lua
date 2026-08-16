return {
  name    = "hyprland-protocols",
  version = "0.7.0",
  summary = "Wayland protocol headers and XMLs for Hyprland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprland-protocols/hyprland-protocols-0.7.0.tar.gz",
  sha256  = "efc1adf0b5f7981ced21108fb330cb8dc67f763ec6afb532fb224207600a39f7",
  deps    = { "hyprwayland-scanner" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/hyprland-protocols/protocols/hyprland-toplevel-export-v1.xml -a -f " .. p.install_root .. "/usr/share/pkgconfig/hyprland-protocols.pc")
  end,
}
