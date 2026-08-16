return {
  name    = "nvidia-dkms",
  version = "595.71.05",
  summary = "NVIDIA official open GPU kernel modules via DKMS (rebuilt automatically on kernel updates)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nvidia-dkms/nvidia-dkms-595.71.05.tar.xz",
  sha256  = "2066a2521adb8030905f4340ee9a788d04284c18390f78f1e0a0aafdaa0dd249",
  deps    = { "dkms", "make", "gcc", "binutils", "linux-headers-6.16", "linux-headers-7.1.8" },
  build   = function(p)
    -- Auto-detect the running kernel and require its headers to be present.
    p:run("test -d /lib/modules/$(uname -r)/build || { echo 'nvidia-dkms: no kernel headers for $(uname -r); install the linux-headers package matching your kernel'; exit 1; }")

    -- Zeta unpacks the payload and cds into its single top-level directory
    -- before this runs, so the module source tree is the CWD. Install it
    -- where dkms expects it.
    p:run("mkdir -p " .. p.install_root .. "/usr/src")
    p:run("cp -a . " .. p.install_root .. "/usr/src/nvidia-595.71.05")

    -- Stage the dkms tree under install_root so Zeta persists it: the
    -- distro's dkms boot service then finds the registered module in
    -- /var/lib/dkms and can auto-rebuild it for future kernels.
    -- (Built by hand instead of `dkms add` so the source link is a RELATIVE
    -- symlink that stays valid once the staging dir is committed to /.)
    p:run("mkdir -p " .. p.install_root .. "/var/lib/dkms/nvidia/595.71.05/build")
    p:run("ln -s ../../../../../usr/src/nvidia-595.71.05 "
      .. p.install_root .. "/var/lib/dkms/nvidia/595.71.05/source")
    -- dkms install refuses a tree with no directory for the target kernel.
    p:run("mkdir -p " .. p.install_root .. "/lib/modules/$(uname -r)")

    p:run("dkms build -m nvidia -v 595.71.05 -k $(uname -r) --dkmstree "
      .. p.install_root .. "/var/lib/dkms --sourcetree "
      .. p.install_root .. "/usr/src --kernelsourcedir /lib/modules/$(uname -r)/build")

    -- dkms derives the expected module file suffix (.ko / .ko.zst / ...)
    -- from the modules already present in the install tree; the staging
    -- tree is empty, so plant a placeholder named like the freshly built
    -- module to make dkms pick the right one.
    p:run("b=$(basename \"$(ls " .. p.install_root
      .. "/var/lib/dkms/nvidia/595.71.05/$(uname -r)/$(uname -m)/module/nvidia.ko* | head -1)\")"
      .. " && mkdir -p " .. p.install_root
      .. "/lib/modules/$(uname -r)/kernel/drivers/video"
      .. " && touch " .. p.install_root
      .. "/lib/modules/$(uname -r)/kernel/drivers/video/\"$b\"")

    p:run("dkms install -m nvidia -v 595.71.05 -k $(uname -r) --dkmstree "
      .. p.install_root .. "/var/lib/dkms --installtree "
      .. p.install_root .. "/lib/modules --kernelsourcedir /lib/modules/$(uname -r)/build --no-depmod")
  end,
  test    = function(p)
    p:run("find " .. p.install_root .. "/lib/modules/$(uname -r) -name 'nvidia*.ko*' | grep -q .")
  end,
}
