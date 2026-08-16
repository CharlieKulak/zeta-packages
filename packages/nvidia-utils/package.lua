return {
  name    = "nvidia-utils",
  version = "595.71.05",
  summary = "NVIDIA official driver userspace (vendor GL/EGL/GLES/Vulkan libs, tools, Xorg modules, boot-time module loading)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nvidia-utils/nvidia-utils-595.71.05.tar.xz",
  sha256  = "63ea465fec9761af7c02add3147de40fe6261286a64f537e13856ba593a4eb24",
  deps    = { "libglvnd", "nvidia-firmware" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvidia-smi -a -e " .. p.install_root .. "/usr/lib/libGLX_nvidia.so.0 -a -e " .. p.install_root .. "/usr/lib/xorg/modules/drivers/nvidia_drv.so")
  end,
}
