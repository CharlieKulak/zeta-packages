return {
  name    = "gh",
  version = "2.97.0",
  summary = "GitHub's official command-line tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gh/gh-2.97.0.tar.gz",
  sha256  = "6d90a40be1856da7cd69afaec7b4fb0c911afc7dc996b8ccff3af551a83182c9",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gh")
  end,
}
