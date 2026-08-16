return {
  name    = "cups",
  version = "2.4.19",
  summary = "Standards-based open source printing system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cups/cups-2.4.19.tar.gz",
  sha256  = "2f0aa784c22c1fb862cfeffcd91bb638d9185ba8628260e39ab11c071a13faa2",
  deps    = { "acl", "libz", "openssl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcups.so.2")
    p:run(p.install_root .. "/usr/bin/cups-config --version")
  end,
}
