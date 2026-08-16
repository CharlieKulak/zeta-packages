return {
  name    = "lua",
  version = "5.5.1",
  summary = "Powerful lightweight scripting language (Lua 5.5)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "ee45abccf02fb3d1d6f6e646e92e8422636b07b39d53a71250237b807e404fd7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lua -a -e " .. p.install_root .. "/usr/lib/liblua.so.5.5")
  end,
}
