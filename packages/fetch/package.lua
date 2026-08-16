return {
  name    = "fetch",
  version = "2.2.1",
  summary = "Animated 3D fetch tool: spins your distro logo in 3D with live system info",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fetch/fetch-2.2.1.tar.gz",
  sha256  = "6f21baccf4cead886cbdd592b8e68ffabb5d9a6643de9d04bce0eadb27688cb9",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fetch")
  end,
}
