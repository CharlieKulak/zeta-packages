return {
  name    = "macchina",
  version = "6.4.0",
  summary = "Fast, minimal system information fetcher",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/macchina/macchina-6.4.0.tar.gz",
  sha256  = "c02348e2e7072754a5f37e3b496c4e03a85bf279f83fb2f7004263afadfa5013",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/macchina")
  end,
}
