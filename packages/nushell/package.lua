return {
  name    = "nushell",
  version = "0.115.0",
  summary = "Modern shell with structured data",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nushell/nushell-0.115.0.tar.gz",
  sha256  = "810931d5ad50f9bf10d48882d0fd0d608adae0624ceaf719389c3b3bcd0e5efb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nu")
  end,
}
