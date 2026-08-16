return {
  name    = "duf",
  version = "0.9.1",
  summary = "Disk usage/free utility with a friendly UI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/duf/duf-0.9.1.tar.gz",
  sha256  = "10b74829124968af6409c5f39f99a98595f7d81f8803d91e1c61e6f37e728efc",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/duf")
  end,
}
