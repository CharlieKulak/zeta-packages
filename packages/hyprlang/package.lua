return {
  name    = "hyprlang",
  version = "0.6.8",
  summary = "Hyprland config language parser library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprlang/hyprlang-0.6.8.tar.gz",
  sha256  = "c2dfa6288380944ae846c7ad7cd81ee3d125b88197fa04748b2fb23d68533794",
  deps    = { "hyprutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhyprlang.so.2")
  end,
}
