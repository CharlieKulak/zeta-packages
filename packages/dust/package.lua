return {
  name    = "dust",
  version = "1.2.4",
  summary = "More intuitive du — disk usage analyzer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/dust/dust-1.2.4.tar.gz",
  sha256  = "06fec090be6fa938c1c790f01ac870d66da41895bddddeb6ea2085b91707da0c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dust")
  end,
}
