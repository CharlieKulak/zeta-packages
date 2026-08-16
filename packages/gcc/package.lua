return {
  name    = "gcc",
  version = "16.2.0",
  summary = "GNU Compiler Collection (C and C++ frontends) — required to build out-of-tree kernel modules like nvidia",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/gcc/gcc-16.2.0.tar.gz",
  sha256  = "30dc99e4d6dbbf91c0e63748c490464588bd5f14a1d5eb2f3baa59c1dda22b55",
  deps    = { "gmp", "mpfr", "mpc", "binutils", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gcc")
    p:run("test -x " .. p.install_root .. "/usr/bin/g++")
  end,
}
