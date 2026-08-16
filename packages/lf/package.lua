return {
  name    = "lf",
  version = "r42",
  summary = "Terminal file manager written in Go",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lf/lf-r42.tar.gz",
  sha256  = "7084f1b1ee236586de0339eebbf84b09b7b72a7c44aedc5c9a8f636396f8ebca",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lf")
  end,
}
