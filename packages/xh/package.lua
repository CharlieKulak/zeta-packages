return {
  name    = "xh",
  version = "0.26.2",
  summary = "Friendly and fast tool for sending HTTP requests",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xh/xh-0.26.2.tar.gz",
  sha256  = "b383df30bb6204bb199dde17bff1ff2d73fd163557a24c6b37fa176d7d7484e8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xh")
  end,
}
