return {
  name    = "zellij",
  version = "0.44.3",
  summary = "Terminal workspace and multiplexer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zellij/zellij-0.44.3.tar.gz",
  sha256  = "fb7326af5257df28738aa25af488d46e5eda6058694741a7d9abdf84f500d9f7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zellij")
  end,
}
