return {
  name    = "cpufetch",
  version = "1.07",
  summary = "Simple CPU architecture information tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cpufetch/cpufetch-1.07.tar.gz",
  sha256  = "b71af30737b7933bdf0ea58722cc4174feca947d1a35d4888feb2563bd424926",
  arch    = "x86_64",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/cpufetch --version")
  end,
}
