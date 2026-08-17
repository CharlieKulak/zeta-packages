return {
	name = "doas",
	version = "6.8.2",
	summary = "Execute commands as another user (portable OpenBSD doas)",
	url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/doas/doas-6.8.2.tar.gz",
	sha256 = "ca4bfe99bf9ced975441ce08c439cc516550f10f1440f439a9d82333a30669e3",
	deps = {},
	archive = { strip = 1 },
	test = function(p)
		p:run("test -x " .. p.install_root .. "/usr/bin/doas")
		p:run("grep -q 'pam_unix.so' " .. p.install_root .. "/etc/pam.d/doas")
	end,
}
