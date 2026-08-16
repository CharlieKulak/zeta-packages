return {
  name    = "starship",
  version = "1.26.0",
  summary = "The minimal, blazing-fast, infinitely customizable prompt",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/starship/starship-1.26.0.tar.gz",
  sha256  = "6a858bbed037e09abb11122f582c71d31b6917208ec03b4a1a9886d43a686dec",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/starship")
  end,
}
