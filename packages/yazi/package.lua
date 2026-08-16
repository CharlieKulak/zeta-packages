return {
  name    = "yazi",
  version = "26.8.15",
  summary = "Blazing-fast terminal file manager with image preview",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/yazi/yazi-26.8.15.tar.gz",
  sha256  = "67bc6ff15f727f7bd93848f3f76120a51958a54edb887972046748864830e915",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/yazi" or "test -x " .. p.install_root .. "/usr/bin/ya")
  end,
}
