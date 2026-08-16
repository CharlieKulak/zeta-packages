return {
  name    = "glycin",
  version = "2.1.5",
  summary = "Sandboxed image decoding library (libglycin) and gdk-pixbuf loaders",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glycin/glycin-2.1.5.tar.gz",
  sha256  = "35a4bf80830ed42450d1b7fdd190e3c8d8d01f0f63960b557066c691fbf39979",
  deps    = { "gdk-pixbuf", "lcms2", "libseccomp", "fontconfig", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libglycin-2.so.0")
  end,
}
