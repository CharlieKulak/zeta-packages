return {
  name    = "jq",
  version = "1.8.2",
  summary = "Lightweight and flexible command-line JSON processor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/jq/jq-1.8.2.tar.gz",
  sha256  = "94da5ad257848a663805967947acb38bae53808504d2a9fd82b76f3a6bbcb355",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jq")
  end,
}
