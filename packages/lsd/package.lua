return {
  name    = "lsd",
  version = "1.2.0",
  summary = "ls deluxe: pretty ls with icons and colors",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lsd/lsd-1.2.0.tar.gz",
  sha256  = "1cd230a5b6e49dc90c094498c7c66b6ba0c4ba9db4e2c2fc8844c920a46be2b2",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lsd")
  end,
}
