return {
  name    = "gum",
  version = "0.17.0",
  summary = "Tool for writing glamorous shell scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gum/gum-0.17.0.tar.gz",
  sha256  = "801d5b9f2e6a8d33a01b3620f991d0d215c254120777c13a93382d32f0d0f9cc",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gum")
  end,
}
