return {
  name    = "syncthing",
  version = "2.1.3",
  summary = "Continuous file synchronization",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/syncthing/syncthing-2.1.3.tar.gz",
  sha256  = "c478d90b344e9c57470ea75349b065c326aceedad75e7dd5a1ade04c36591b8c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/syncthing")
  end,
}
