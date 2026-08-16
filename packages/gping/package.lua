return {
  name    = "gping",
  version = "v1.20.4",
  summary = "Ping, but with a graph",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gping/gping-v1.20.4.tar.gz",
  sha256  = "d3ef5b1079f27bbe3e183a9b879d7023049f4ec7ed5ba65bc73d25cb331206a0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gping")
  end,
}
