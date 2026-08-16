return {
  name    = "xcb-util-errors",
  version = "1.0.1",
  summary = "XCB utility library for printing error codes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xcb-util-errors/xcb-util-errors-1.0.1.tar.gz",
  sha256  = "1431f3dcbd1e473c421088baa81d90559c5de65a087a8a1d6c31182fcb395de6",
  deps    = { "libxcb", "xcb-proto" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-errors.so.0")
  end,
}
