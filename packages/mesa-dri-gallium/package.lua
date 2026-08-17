return {
  name    = "mesa-dri-gallium",
  version = "25.0.6",
  summary = "Mesa Gallium DRI drivers (Intel, AMD, Nouveau, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa-dri-gallium/mesa-dri-gallium-25.0.6.tar.gz",
  sha256  = "1aa43444e3d622d67e3ba1d1c2bac3a1595a2efd8199cb83d4943e35542be773",
  deps    = { "mesa", "libdrm", "libzstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/dri/crocus_dri.so -o -e " .. p.install_root .. "/usr/lib/dri/nouveau_dri.so -o -e " .. p.install_root .. "/usr/lib/dri/i915_dri.so")
  end,
}
