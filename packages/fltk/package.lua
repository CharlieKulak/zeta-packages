return {
  name    = "fltk",
  version = "1.3.11",
  summary = "Fast Light Toolkit, C++ GUI library (widget toolkit used by the Equinox Desktop Environment)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fltk/fltk-1.3.11.tar.gz",
  sha256  = "ffd4a1a66092767069b17c51a9edc801c7c7c685e8f0b0b74fc079c55a2d1340",
  deps    = { "libX11", "libXext", "libXft", "libXrender", "libXinerama", "libXcursor", "libXfixes", "fontconfig", "libpng", "libjpeg-turbo", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfltk.so.1.3 && test -x " .. p.install_root .. "/usr/bin/fltk-config")
  end,
}
