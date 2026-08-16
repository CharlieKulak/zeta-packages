return {
  name    = "helium",
  version = "0.15.5.1",
  summary = "Privacy-focused Chromium-based web browser",
  url     = "https://github.com/imputnet/helium-linux/releases/download/0.15.5.1/helium-0.15.5.1-x86_64_linux.tar.xz",
  sha256  = "f34a1ee1a6ab2e3109d92e3939512a37cfe68a2f0d230b525cc1589fc192fd97",
  arch    = "x86_64",
  deps    = { "alsa-lib", "at-spi2-core", "cairo", "cups", "dbus", "expat", "fontconfig", "freetype", "gdk-pixbuf", "glib", "gtk3", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXrandr", "libXrender", "libdrm", "libxcb", "mesa", "nss", "pango", "pulseaudio", "xkbcommon" },
  install = function(p)
    p:install(".", "/opt/helium")
    p:install("helium.desktop", "/usr/share/applications/helium.desktop")
    p:install("product_logo_256.png", "/usr/share/icons/hicolor/256x256/apps/helium.png")
    p:run("mkdir -p " .. p.install_root .. "/usr/bin")
    p:run("ln -s /opt/helium/helium-wrapper " .. p.install_root .. "/usr/bin/helium")
  end,
  test = function(p)
    p:run(p.install_root .. "/opt/helium/helium-wrapper --version")
  end,
}
