return {
  name    = "screen",
  version = "5.0.0",
  summary = "Full-screen window manager that multiplexes a physical terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/screen/screen-5.0.0.tar.gz",
  sha256  = "237d82efb4129dd8cc507ffb34577a5c7009c4f3cf75e2d8e97fb56958e189e8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/screen")
  end,
}
