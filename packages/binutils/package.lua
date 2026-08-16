return {
  name    = "binutils",
  version = "2.47",
  summary = "GNU binary tools (as, ld, ar, objdump, ...) — required to compile and link kernel modules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/binutils/binutils-2.47.tar.gz",
  sha256  = "dec815d74a963630862eb768cb51ca0770c75465d59f2f2ee9bcd04dd5d06e65",
  deps    = { "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ld && test -x " .. p.install_root .. "/usr/bin/as")
  end,
}
