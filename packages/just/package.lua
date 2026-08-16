return {
  name    = "just",
  version = "1.58.0",
  summary = "Handy way to save and run project-specific commands",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/just/just-1.58.0.tar.gz",
  sha256  = "b68492d2da2ecbb6cb216abd4a091dc75c52313f843f69dbe824fbc398a4d2eb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/just")
  end,
}
