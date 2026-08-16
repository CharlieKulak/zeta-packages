return {
  name    = "xwayland-satellite",
  version = "0.8.2",
  summary = "Rootless Xwayland integration for any Wayland compositor (xdg_wm_base + viewporter)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xwayland-satellite/xwayland-satellite-0.8.2.tar.gz",
  sha256  = "1c702db235e61809b9b6a209d44d478f0702572b0fee59ff55dbf9e77895427e",
  deps    = { "xcb", "xcb-util-cursor", "xwayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xwayland-satellite")
  end,
}
