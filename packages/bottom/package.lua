return {
  name    = "bottom",
  version = "0.14.8",
  summary = "Graphical process/system monitor for the terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/bottom/bottom-0.14.8.tar.gz",
  sha256  = "7131d0b4e6f867bd24975a7d0405f938b60c82f6ab7a18cd7118dccfb4cd6090",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/btm")
  end,
}
