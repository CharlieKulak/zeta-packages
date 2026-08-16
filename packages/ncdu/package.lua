return {
  name    = "ncdu",
  version = "1.22",
  summary = "NCurses disk usage viewer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ncdu/ncdu-1.22.tar.gz",
  sha256  = "91e4ac7ac5041af5a0e80c815bfb48be83742dc2dab57ab815999bd95c3954f6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ncdu")
  end,
}
