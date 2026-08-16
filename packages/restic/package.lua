return {
  name    = "restic",
  version = "0.19.1",
  summary = "Fast, secure, efficient backup program",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/restic/restic-0.19.1.tar.gz",
  sha256  = "4b14e3941fcd1db23e770bbe680f101217dccaadfe4650a289a4e5820016d79c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/restic")
  end,
}
