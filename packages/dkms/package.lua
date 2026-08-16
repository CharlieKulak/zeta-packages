return {
  name    = "dkms",
  version = "3.4.2",
  summary = "Dynamic Kernel Module Support framework (rebuild out-of-tree modules on kernel updates)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/dkms/dkms-3.4.2.tar.gz",
  sha256  = "2d0060f3abb385df98c8229a358eece70d71d8f7e08f08dd920e0574b66f6d91",
  deps    = { "make" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/dkms")
  end,
}
