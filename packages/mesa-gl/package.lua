return {
  name    = "mesa-gl",
  version = "25.0.6",
  summary = "Mesa OpenGL implementation (libGL)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa-gl/mesa-gl-25.0.6.tar.gz",
  sha256  = "53e34d44f61f51b024693f84086855785ac25b84e6f74ab4035069e1f137f74d",
  deps    = { "libglvnd", "libdrm", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGL.so.1")
  end,
}
