return {
  name    = "cheat",
  version = "5.1.0",
  summary = "Interactive cheatsheets on the command line",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cheat/cheat-5.1.0.tar.gz",
  sha256  = "4d9c680b44d62043b6ab0a8313360ffe911ac6a21a0eaadf35df744854772e3c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cheat")
  end,
}
