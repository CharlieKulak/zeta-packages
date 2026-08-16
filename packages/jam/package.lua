return {
  name    = "jam",
  version = "2.5",
  summary = "Jam, Perforce make(1) replacement (build tool used by the Equinox Desktop Environment)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/jam/jam-2.5.tar.gz",
  sha256  = "2cfa21a3705f5c436e62262dd815d8d4ef75f864981164ffbec90925e282b2d8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jam")
  end,
}
