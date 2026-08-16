return {
  name    = "nvidia",
  version = "595.71.05",
  summary = "NVIDIA official driver (meta-package: DKMS kernel modules + userspace, auto-blacklists nouveau)",
  deps    = { "nvidia-utils", "nvidia-dkms" },
  install = function(p)
    local dir = p.install_root .. "/usr/share/nvidia"
    p:run("mkdir -p " .. dir)
    p:run("echo 'NVIDIA official driver 595.71.05' > " .. dir .. "/meta")

    -- Guarantee the nouveau blacklist exists (nvidia-utils ships the same
    -- file; this keeps the guarantee even if the dep set changes).
    local mpd = p.install_root .. "/etc/modprobe.d"
    p:run("mkdir -p " .. mpd)
    p:run("cat > " .. mpd .. "/nvidia.conf <<'NVEOF'\n# NVIDIA official driver: disable the reverse-engineered nouveau driver\nblacklist nouveau\noptions nouveau modeset=0\n# Kernel modesetting is required for Wayland\noptions nvidia-drm modeset=1\nNVEOF")

    -- Detect nouveau and switch over to nvidia immediately when possible.
    -- (p:run prefixes `cd … && TMPDIR=… PATH=… `; a leading `if` would be a
    -- syntax error after those env assignments, so start with a no-op.)
    p:run([[
true
if lsmod 2>/dev/null | grep -q '^nouveau'; then
  echo '[nvidia] nouveau detected (loaded): removing it'
  if rmmod nouveau 2>/dev/null; then
    echo '[nvidia] nouveau unloaded'
  else
    echo '[nvidia] WARNING: nouveau is busy (in use by the display server); the blacklist takes effect on the next reboot'
  fi
else
  echo '[nvidia] nouveau not loaded'
fi
if ! lsmod 2>/dev/null | grep -q '^nvidia'; then
  if modprobe nvidia 2>/dev/null; then
    echo '[nvidia] nvidia module loaded'
    modprobe nvidia_drm 2>/dev/null && echo '[nvidia] nvidia_drm loaded (restart your display server to use it)' || true
  else
    echo '[nvidia] could not load nvidia yet; reboot to activate'
  fi
fi
]])
  end,
  test = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/nvidia/meta")
    p:run("grep -q 'blacklist nouveau' " .. p.install_root .. "/etc/modprobe.d/nvidia.conf")
  end,
}
