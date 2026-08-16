return {
  name    = "hyprcursor",
  version = "0.1.13",
  summary = "Hyprland cursor theme format library and hyprcursor-util",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprcursor/hyprcursor-0.1.13.tar.gz",
  sha256  = "57ca4f33c21d5790a1db67cb64a4abfd74afa04937c17a5e8f4c4c83e90a2780",
  deps    = { "hyprlang", "hyprutils", "tomlplusplus", "libzip", "librsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhyprcursor.so.0 -a -x " .. p.install_root .. "/usr/bin/hyprcursor-util")
  end,
}
