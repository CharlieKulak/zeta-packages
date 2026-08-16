return {
  name    = "joe",
  version = "4.6",
  summary = "Joe's Own Editor — a friendly UNIX text editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/joe/joe-4.6.tar.gz",
  sha256  = "cf75ecbf681510233f685f1820410ee4428351fee7a64bce71eb268d06552aac",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/joe")
  end,
}
