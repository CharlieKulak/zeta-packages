return {
  name    = "hyprpolkitagent",
  version = "0.1.3",
  summary = "Polkit authentication agent for Hyprland (Qt6)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprpolkitagent/hyprpolkitagent-0.1.3.tar.gz",
  sha256  = "2e3991ae395baac8f6b59711623d844d156f227d2bf73bd1cde509b67e7ced7c",
  deps    = { "hyprutils", "hyprland-qt-support", "polkit", "polkit-qt-1", "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/hyprpolkitagent")
  end,
}
