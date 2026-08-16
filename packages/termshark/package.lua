return {
  name    = "termshark",
  version = "2.4.0",
  summary = "Terminal UI for tshark, a Wireshark protocol analyzer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/termshark/termshark-2.4.0.tar.gz",
  sha256  = "d479141e8952cb01bc139d4f49664094a834dc965815f567f2fe55dddc16c7c4",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/termshark")
  end,
}
