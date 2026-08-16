return {
  name    = "gitui",
  version = "0.28.1",
  summary = "Blazing-fast terminal UI for git",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gitui/gitui-0.28.1.tar.gz",
  sha256  = "8d18b1ef07674cec28082c9be9f40ca0d463ad2ca88768af933026c5dec8c086",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gitui")
  end,
}
