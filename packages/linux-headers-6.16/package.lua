return {
  name    = "linux-headers-6.16",
  version = "6.16.0",
  summary = "Kernel headers and build tree for Linux 6.16 (Zerene base install) — required to build out-of-tree modules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/linux-headers-6.16/linux-headers-6.16-6.16.0.tar.xz",
  sha256  = "641dc126f0441649ac7067d333702628239aa17d6c04f5013e24dd08e27d15d0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/modules/6.16.0/build/Makefile")
    p:run("test -f " .. p.install_root .. "/usr/lib/modules/6.16.0/build/Module.symvers")
    p:run("test -f " .. p.install_root .. "/usr/lib/modules/6.16.0/build/scripts/module.lds")
  end,
}
