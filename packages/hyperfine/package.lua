return {
  name    = "hyperfine",
  version = "1.20.0",
  summary = "Command-line benchmarking tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyperfine/hyperfine-1.20.0.tar.gz",
  sha256  = "e710b0b75190c647ce47dd61f46dcfd849050f879ae9a106e0566879b2125e40",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyperfine")
  end,
}
