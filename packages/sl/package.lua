return {
  name    = "sl",
  version = "5.02",
  summary = "Steam locomotive that runs across your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/sl/sl-5.02.tar.gz",
  sha256  = "6e5b1a48d9bbb7b5a3a10108b3a8dbeb9d12b444b03caee58388141ed932744a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sl")
  end,
}
