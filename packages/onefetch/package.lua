return {
  name    = "onefetch",
  version = "2.27.1",
  summary = "Git repository summary on the command line",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/onefetch/onefetch-2.27.1.tar.gz",
  sha256  = "b7afe16a1e6bdae793645e464952dea27514236db36ab15b27cb44f6da757711",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/onefetch")
  end,
}
