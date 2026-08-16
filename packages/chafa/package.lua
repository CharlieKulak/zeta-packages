return {
  name    = "chafa",
  version = "1.18.2",
  summary = "Terminal graphics: images as ANSI/Unicode",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/chafa/chafa-1.18.2.tar.gz",
  sha256  = "6f269684264c4c913915647e6af6cb12131ee59932f4e74fbd0797aa7e526ef1",
  deps    = { "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chafa")
  end,
}
