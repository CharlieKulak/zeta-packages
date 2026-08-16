return {
  name    = "bat",
  version = "0.26.1",
  summary = "cat(1) clone with syntax highlighting and git integration",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/bat/bat-0.26.1.tar.gz",
  sha256  = "68aed47ee0e405415c09d5efa2f8eaeba0776cbe9461368c956cbddb24eec54a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bat")
  end,
}
