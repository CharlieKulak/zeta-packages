return {
  name    = "nano",
  version = "8.4",
  summary = "Small, friendly text editor inspired by Pico",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nano/nano-8.4.tar.gz",
  sha256  = "766ec3339000f9686188cf137d4b5802c624bc4c8f97476cf8ea2d1a5105c1a6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nano")
  end,
}
