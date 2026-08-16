return {
  name    = "spirv-tools",
  version = "2026.3",
  summary = "Khronos SPIR-V tools and libraries (assemble, validate, optimize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/spirv-tools/spirv-tools-2026.3.tar.gz",
  sha256  = "2c71389a9e38a4d3fd6facaa36f4ade40a75e29b3ce742d674da4a49550a2bd1",
  deps    = { "spirv-headers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/spirv-val -a -e " .. p.install_root .. "/usr/lib/libSPIRV-Tools.so -a -e " .. p.install_root .. "/usr/lib/libSPIRV-Tools-opt.so")
  end,
}
