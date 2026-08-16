return {
  name    = "abseil-cpp",
  version = "20260526.0",
  summary = "Abseil C++ common libraries (strings, hash, time, logging)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/abseil-cpp/abseil-cpp-20260526.0.tar.gz",
  sha256  = "06b91f03186608f0b14bf58075b4e603f85dae258c1858c3bf0e42839b44ae87",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libabsl_strings.so.2605.0.0")
  end,
}
