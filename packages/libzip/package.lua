return {
  name    = "libzip",
  version = "1.11.4",
  summary = "C library for reading, creating and modifying zip archives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libzip/libzip-1.11.4.tar.gz",
  sha256  = "7f11379a012a606fc041fbf158ba9e4365d95a7910aa4bb6300e30642ee7fc87",
  deps    = { "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libzip.so.5")
  end,
}
