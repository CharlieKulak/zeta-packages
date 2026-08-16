return {
  name    = "tokei",
  version = "12.1.2",
  summary = "Fast code statistics tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tokei/tokei-12.1.2.tar.gz",
  sha256  = "558f947611c279da28d303e00f8d86ce8ed40a37e15af1d7183e241a34a74e47",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tokei")
  end,
}
