return {
  name    = "eza",
  version = "0.23.5",
  summary = "Modern replacement for ls",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/eza/eza-0.23.5.tar.gz",
  sha256  = "94d2be0fa3c57b6d15a56d176dfec3cf371b55023ea7ae9cd37efcc784a965a2",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/eza")
  end,
}
