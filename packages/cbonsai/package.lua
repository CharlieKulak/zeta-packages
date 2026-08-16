return {
  name    = "cbonsai",
  version = "master",
  summary = "C Bonsai terminal screensaver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cbonsai/cbonsai-master.tar.gz",
  sha256  = "833c876483dbfdf82fc04daea5e8d2524d9ad7842406c6827f577991041f1697",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/cbonsai")
  end,
}
