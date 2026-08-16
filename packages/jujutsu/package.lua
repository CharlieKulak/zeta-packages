return {
  name    = "jujutsu",
  version = "0.44.0",
  summary = "Git-compatible version control system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/jujutsu/jujutsu-0.44.0.tar.gz",
  sha256  = "3829897336964a102f2eecb124e8894487d2c0f97a1c562f4ceefe2def8c5da4",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jj")
  end,
}
