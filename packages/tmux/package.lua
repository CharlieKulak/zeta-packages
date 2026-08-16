return {
  name    = "tmux",
  version = "3.5a",
  summary = "Terminal multiplexer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tmux/tmux-3.5a.tar.gz",
  sha256  = "6f6565d5e6e79639f2d6a69ae2f367ea9434ecf2b68bc23f3d312b03a64530d7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tmux")
  end,
}
