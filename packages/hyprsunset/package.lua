return {
  name    = "hyprsunset",
  version = "0.4.0",
  summary = "Blue light filter for Hyprland (gamma control)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprsunset/hyprsunset-0.4.0.tar.gz",
  sha256  = "0aeee5ddb63aa29b5e3ae74ee6b362eae56050026a64903b6d0ef5f132f8fcf9",
  deps    = { "hyprutils", "hyprlang", "hyprwayland-scanner", "hyprland-protocols", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyprsunset")
  end,
}
