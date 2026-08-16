return {
  name    = "broot",
  version = "1.58.0",
  summary = "A new way to see and navigate directory trees",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/broot/broot-1.58.0.tar.gz",
  sha256  = "80f9bf3a91a029aec1bd25dc0b6e1646956ad926d3d0d801dc662bb32e01c989",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/broot")
  end,
}
