return {
  name    = "linux-headers-7.1.8",
  version = "7.1.8",
  summary = "Kernel headers and build tree for Linux 7.1.8 (post-genkernel kernel) — required to build out-of-tree modules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/linux-headers-7.1.8/linux-headers-7.1.8-7.1.8.tar.xz",
  sha256  = "df12f1acf2a577f7395d3167c1bbabfa4be02d4cb5a797c25380e4dff92f3f94",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/modules/7.1.8/build/Makefile")
    p:run("test -f " .. p.install_root .. "/usr/lib/modules/7.1.8/build/Module.symvers")
    p:run("test -f " .. p.install_root .. "/usr/lib/modules/7.1.8/build/scripts/module.lds")
  end,
}
