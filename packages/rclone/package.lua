return {
  name    = "rclone",
  version = "1.75.0",
  summary = "Rsync for cloud storage",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/rclone/rclone-1.75.0.tar.gz",
  sha256  = "672b304b777b6e57e1546b4de192785be7d79ea64580fa2e3942cf2be7e61430",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rclone")
  end,
}
