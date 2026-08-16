return {
  name    = "bandwhich",
  version = "0.23.1",
  summary = "Terminal bandwidth utilization tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/bandwhich/bandwhich-0.23.1.tar.gz",
  sha256  = "3fedfdd34754ecac1e2edd59df8ecc179dd29aef5473f499ee65eccff9cd37dc",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bandwhich")
  end,
}
