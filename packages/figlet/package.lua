return {
  name    = "figlet",
  version = "2.2.5",
  summary = "Program for making large letters out of ordinary text",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/figlet/figlet-2.2.5.tar.gz",
  sha256  = "85043531c6bf1fa9ddbc3113c82739b58841859cfa8f3ed00a3d74adf301f189",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/figlet")
  end,
}
