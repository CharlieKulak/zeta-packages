return {
  name    = "glslang",
  version = "16.5.0",
  summary = "OpenGL and OpenGL ES shader front end and validator (GLSL -> SPIR-V)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glslang/glslang-16.5.0.tar.gz",
  sha256  = "9a398cdf2005f5dd77ba3d923dd0e5b16c1cf8dacaa501d06a40d54219a78b8d",
  deps    = { "spirv-tools", "spirv-headers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libglslang.so.16 -a -e " .. p.install_root .. "/usr/lib/libSPIRV.so.16")
  end,
}
