return {
  name    = "sd",
  version = "1.1.0",
  summary = "Intuitive find-and-replace CLI (sed alternative)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/sd/sd-1.1.0.tar.gz",
  sha256  = "282310af8dd84cee21d9b104b2f3580193a718a3ac8e80adc8f7f208f75e9cab",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sd")
  end,
}
