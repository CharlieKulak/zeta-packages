return {
  name    = "hypridle",
  version = "0.1.8",
  summary = "Idle management daemon for Hyprland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hypridle/hypridle-0.1.8.tar.gz",
  sha256  = "9a0ecbeb7d1ae344d7f20f9cc4d46402099b5cabb0f6cf453a4d522c44346d3c",
  deps    = { "hyprlang", "sdbus-cpp", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hypridle")
  end,
}
