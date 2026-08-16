return {
  name    = "tealdeer",
  version = "1.8.1",
  summary = "Very fast implementation of tldr pages",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tealdeer/tealdeer-1.8.1.tar.gz",
  sha256  = "5ea8e63a97a6706a10761a96b35d1464a583a04c7a86086ddefe600622d152c8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tldr")
  end,
}
