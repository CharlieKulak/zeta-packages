return {
  name    = "edelib",
  version = "2.1",
  summary = "EDE base C++ library on FLTK (shared foundation of the Equinox Desktop Environment)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/edelib/edelib-2.1.tar.gz",
  sha256  = "05df927384e619d9cd6ada5ae8df614c2109b4c1d6934b719680fd0e59850217",
  deps    = { "fltk", "libX11", "libXpm", "libXft", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libedelib.a && test -f " .. p.install_root .. "/usr/lib/pkgconfig/edelib.pc && test -x " .. p.install_root .. "/usr/bin/edelib-dbus-explorer")
  end,
}
