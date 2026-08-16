return {
  name    = "linux-pam",
  version = "1.7.2",
  summary = "Pluggable Authentication Modules library and modules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/linux-pam/linux-pam-1.7.2.tar.gz",
  sha256  = "818bb5e328fa7c9bc71e17e5848292bb6498cddea4f1ea213caff5104ee30220",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpam.so.0")
  end,
}
