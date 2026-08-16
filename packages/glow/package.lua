return {
  name    = "glow",
  version = "3.0.0",
  summary = "Render markdown in the terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glow/glow-3.0.0.tar.gz",
  sha256  = "9c8d94213d99c00ac27d53890541bc7b68f400a900dfdaa3f68a35e4133fcfa8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glow")
  end,
}
