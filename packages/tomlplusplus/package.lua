return {
  name    = "tomlplusplus",
  version = "3.4.0",
  summary = "Header-friendly TOML config file parser for C++17 (shared lib)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.4.0.tar.gz",
  sha256  = "e2dcf57110da9069c823fa834b2105c52dfc4765eba60ef216b2bd4c834bc921",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtomlplusplus.so.3")
  end,
}
