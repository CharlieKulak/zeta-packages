return {
  name    = "sdbus-cpp",
  version = "2.3.1",
  summary = "High-level C++ D-Bus library for Linux (sd-bus)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/sdbus-cpp/sdbus-cpp-2.3.1.tar.gz",
  sha256  = "d6f50a46ffec6c3324d69dc7b7163a8c6688f56b6590b985d365ca11a7eced72",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsdbus-c++.so.2")
  end,
}
