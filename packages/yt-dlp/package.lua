return {
  name    = "yt-dlp",
  version = "2026.07.04",
  summary = "Downloader for YouTube and many other sites",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/yt-dlp/yt-dlp-2026.07.04.tar.gz",
  sha256  = "eb3ae239df8dc8687ba9fb3505ca1151f807480ae40eb94c99dfc1fa205f694d",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/yt-dlp")
  end,
}
