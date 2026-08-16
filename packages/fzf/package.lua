return {
  name    = "fzf",
  version = "0.74.2",
  summary = "Command-line fuzzy finder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fzf/fzf-0.74.2.tar.gz",
  sha256  = "af804fd90f0ceaa480ce201e0c0395485f0ed743cf1a01ca58051c26a5edc1b1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fzf")
  end,
}
