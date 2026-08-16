return {
  name    = "spirv-headers",
  version = "1.4.357.0",
  summary = "SPIR-V header files (Khronos SPIR-V machine-readable interface definitions)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/spirv-headers/spirv-headers-1.4.357.0.tar.gz",
  sha256  = "0f614cdc081977136eaacd82bbacad02d414152cf09d4646a6f90eb8898931dd",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/spirv/unified1/spirv.core.grammar.json")
  end,
}
