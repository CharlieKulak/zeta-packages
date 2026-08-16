return {
  name    = "helix",
  version = "25.07.1",
  summary = "Post-modern modal text editor written in Rust",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/helix/helix-25.07.1.tar.gz",
  sha256  = "956b76cf54343823919d59a1aa8440c589a4c2bb12b8e7be073dab2502db07fb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hx")
  end,
}
