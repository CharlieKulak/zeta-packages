return {
  name    = "ani-cli",
  version = "4.15",
  summary = "A cli tool to browse and play anime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ani-cli/ani-cli-4.15.tar.gz",
  sha256  = "e036a2a06981f1eda6e1b35ed8622b48eb9699f313159b9339fbe09d6b9f67bd",
  deps    = { "curl", "fzf", "ffmpeg", "mpv" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/ani-cli")
  end,
}
