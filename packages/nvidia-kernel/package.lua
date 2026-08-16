return {
  name    = "nvidia-kernel",
  version = "595.71.05",
  summary = "NVIDIA official open GPU kernel modules (compiled against the running kernel at install time)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nvidia-kernel/nvidia-kernel-595.71.05.tar.xz",
  sha256  = "2085d6e1736afb1a09a15b1a3f04353382ae5cac096cd849aba47a68738ddf11",
  deps    = { "make" },
  build   = function(p)
    -- The unpacked source tree is kernel-open/; the NVIDIA open modules
    -- build against /lib/modules/$(uname -r)/build (SYSSRC default) and
    -- install into $(INSTALL_MOD_PATH)/lib/modules/.../kernel/drivers/video.
    p:run("make -j$(nproc) modules")
    p:run("make modules_install INSTALL_MOD_PATH=" .. p.install_root)
    -- modules_install runs depmod -b on the staging tree, generating
    -- nvidia-only module maps. Drop them: committing them would overwrite
    -- the system's real modules.dep/modules.alias and break modprobe for
    -- every other module (Zeta itself reruns depmod after commit).
    p:run("rm -f " .. p.install_root .. "/lib/modules/$(uname -r)/modules.*")
  end,
  test    = function(p)
    p:run("find " .. p.install_root .. "/lib/modules/$(uname -r) -name 'nvidia*.ko*' | grep -q .")
  end,
}
