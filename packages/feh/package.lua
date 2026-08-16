return {
  name    = "feh",
  version = "3.12.2",
  summary = "Fast and lightweight image viewer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/feh/feh-3.12.2.tar.gz",
  sha256  = "13537ec5afd142c3c5b85f5bd34cc8ce9c0aa8b6cdc2b64bdca412cf2d130d06",
  deps    = { "file", "imlib2", "libpng", "libX11", "libXinerama" },
  archive = { strip = 1 },
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/feh --version")
  end,
}
