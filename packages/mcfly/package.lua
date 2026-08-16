return {
  name    = "mcfly",
  version = "0.9.4",
  summary = "Fly through your shell history",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mcfly/mcfly-0.9.4.tar.gz",
  sha256  = "bbc2d04e1a306fe5a1469937dc411849922b95b831e2d5c7815dcb70b2996df0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mcfly")
  end,
}
