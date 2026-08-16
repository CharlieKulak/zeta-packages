return {
  name    = "doggo",
  version = "1.3.0",
  summary = "Modern DNS client with colorful output",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/doggo/doggo-1.3.0.tar.gz",
  sha256  = "d411bfe044c1c42aeda37277ed4dd74881b476b203bc36ec18e2cace8f5cdad9",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/doggo")
  end,
}
