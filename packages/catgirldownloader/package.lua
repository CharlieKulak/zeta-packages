return {
  name    = "catgirldownloader",
  version = "0.5",
  summary = "GTK4 application that downloads images of catgirl and waifus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/catgirldownloader/catgirldownloader-0.5.tar.gz",
  sha256  = "e97dbfa15c36dab0f4a2bb836129d7807a626d1f1f07eb0d61717cec2b469371",
  deps    = { "python", "gtk4", "libadwaita" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/catgirldownloader")
  end,
}
