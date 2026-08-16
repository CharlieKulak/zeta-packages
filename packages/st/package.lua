return {
  name    = "st",
  version = "0.9.2",
  summary = "Simple terminal implementation for X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/st/st-0.9.2.tar.gz",
  sha256  = "d892b9e9696fb08051d68325740e33f1e167048fb32319da981db06b145e0100",
  deps    = { "libX11", "libXft" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/st")
  end,
}
