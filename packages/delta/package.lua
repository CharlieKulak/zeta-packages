return {
  name    = "delta",
  version = "0.19.2",
  summary = "Syntax-highlighting pager for git and diff output",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/delta/delta-0.19.2.tar.gz",
  sha256  = "8f9b8b442bf59f4b548a16827cd019dd67c3cf2e057d33c3d39583ccef92d7de",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/delta")
  end,
}
