return {
  name    = "re2",
  version = "2025-11-05",
  summary = "Fast, safe, thread-friendly regular expression library (RE2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/re2/re2-2025-11-05.tar.gz",
  sha256  = "37adc3c1b58a2aef69b38514faefe401a95ae3f579e85c17de1303f769b19393",
  deps    = { "abseil-cpp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libre2.so.11")
  end,
}
