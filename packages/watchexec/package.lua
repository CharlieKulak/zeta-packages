return {
  name    = "watchexec",
  version = "2.5.1",
  summary = "Execute commands when files change",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/watchexec/watchexec-2.5.1.tar.gz",
  sha256  = "8411b11dbcffa4c5f9b836047d9124294424fcd44e16255e78ea86720bc04f9f",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/watchexec")
  end,
}
