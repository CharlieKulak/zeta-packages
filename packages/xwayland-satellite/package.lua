return {
  name    = "xwayland-satellite",
  version = "0.8.2",
  summary = "Rootless Xwayland integration for any Wayland compositor (xdg_wm_base + viewporter)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xwayland-satellite/xwayland-satellite-0.8.2.tar.gz",
  sha256  = "f1bb47b7368dff7db8b72a60a4ddb8c49fa21fba33719b183d4a4e39142e4170",
  deps    = { "libxcb", "xcb-util-cursor", "xwayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xwayland-satellite")
  end,
}
