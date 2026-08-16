return {
  name    = "ede",
  version = "2.1",
  summary = "Equinox Desktop Environment, small and fast FLTK-based desktop (panel, desktop icons, apps)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ede/ede-2.1.tar.gz",
  sha256  = "a4490ffdf19ed6d2cbc31f28dd2a5750794de079f4381384731c78a70305dc41",
  deps    = { "edelib", "fltk", "dbus", "libX11", "libXpm", "libXft" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/startede && test -x " .. p.install_root .. "/usr/bin/ede-panel && test -x " .. p.install_root .. "/usr/bin/evoke")
  end,
}
