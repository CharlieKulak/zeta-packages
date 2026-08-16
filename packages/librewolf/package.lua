return {
  name    = "librewolf",
  version = "146.0.1-1",
  summary = "Privacy-focused Firefox fork (standalone build)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/librewolf/librewolf-146.0.1-1.tar.xz",
  sha256  = "39756b7a222c809d7624eee25dff073bb0c551b256cef39ff64d8f23c96f1bcb",
  deps    = { "alsa-lib", "at-spi2-core", "cairo", "fontconfig", "freetype", "gdk-pixbuf", "glib", "gtk3", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXrandr", "libXrender", "libxcb", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/librewolf")
  end,
}
