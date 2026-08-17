return {
  name    = "openssh",
  version = "10.3p1",
  summary = "OpenSSH protocol implementation for remote login, command execution and file transfer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openssh/openssh-10.3p1.tar.gz",
  sha256  = "e8f899dc74e1c7489db88a363ebef06f390fafd1daae0fd07b16f910c1e54c24",
  deps    = { "glibc", "openssl", "pam", "zlib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/sshd")
    p:run("test -f " .. p.install_root .. "/usr/bin/ssh")
  end,
}
