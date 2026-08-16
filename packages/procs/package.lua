return {
  name    = "procs",
  version = "0.14.12",
  summary = "Modern replacement for ps written in Rust",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/procs/procs-0.14.12.tar.gz",
  sha256  = "1bf0bbdd15ec94705c7974dac8fbfee1974089690ee3143a7c14a95908ec9949",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/procs")
  end,
}
