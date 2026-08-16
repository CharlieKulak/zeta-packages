return {
  name    = "hyprpicker",
  version = "0.4.7",
  summary = "Screen color picker for Hyprland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprpicker/hyprpicker-0.4.7.tar.gz",
  sha256  = "a530f05bfa5359a05d72808091180a88b5f80167c61133919fe9c78430de2497",
  deps    = { "hyprutils", "hyprland-protocols", "wayland", "xkbcommon", "cairo", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyprpicker")
  end,
}
