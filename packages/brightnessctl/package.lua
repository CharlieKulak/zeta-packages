return {
  name    = "brightnessctl",
  version = "0.5.1",
  summary = "Command-line utility to read and control device brightness",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/brightnessctl/brightnessctl-0.5.1.tar.gz",
  sha256  = "01c0a1ff1f98c56cf4d8ee9b9524f1b8c4abde4493266133d5f6d0ed42cd9525",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/brightnessctl --version")
  end,
}
