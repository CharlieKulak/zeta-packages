return {
  name    = "libei",
  version = "1.6.0",
  summary = "Library for Emulated Input (libei) and Emulated Input Server (libeis)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libei/libei-1.6.0.tar.gz",
  sha256  = "05a1b7489b72e5bdc5bfb1ada799af4dd91132a0ed20ac403f5c78b279c3cc7c",
  deps    = { "xkbcommon", "libevdev" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libei.so.1 -a -e " .. p.install_root .. "/usr/lib/libeis.so.1")
  end,
}
