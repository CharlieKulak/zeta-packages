return {
  name    = "lazygit",
  version = "0.64.1",
  summary = "Simple terminal UI for git commands",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lazygit/lazygit-0.64.1.tar.gz",
  sha256  = "ee3c9591a475f63ddcdab18d0704bf415f24498d10cfb80f6886764cff9652a2",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lazygit")
  end,
}
