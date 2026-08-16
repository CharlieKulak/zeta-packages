return {
  name    = "gdu",
  version = "5.36.1",
  summary = "Fast disk usage analyzer with console UI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gdu/gdu-5.36.1.tar.gz",
  sha256  = "5ce35beba266178d5a6bc70d074bce33d276c68ed951ca681f20d18bec3eebc9",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gdu")
  end,
}
