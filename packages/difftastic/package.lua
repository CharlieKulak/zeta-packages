return {
  name    = "difftastic",
  version = "0.70.0",
  summary = "Structural diff tool that compares files by syntax",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/difftastic/difftastic-0.70.0.tar.gz",
  sha256  = "b287f663bc18d56c588475fd2b50346d260bde1a5cb42ad719a43b9614e7ac5c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/difft")
  end,
}
