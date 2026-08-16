return {
  name    = "zoxide",
  version = "0.10.0",
  summary = "Smarter cd command that tracks your most used directories",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zoxide/zoxide-0.10.0.tar.gz",
  sha256  = "fd7b258f17527d59fd0adf23e59225e7b276b410dedd1b4791eb3dfa4a5173b0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zoxide")
  end,
}
