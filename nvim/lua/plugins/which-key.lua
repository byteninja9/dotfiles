local wk = require("which-key")
wk.add({
	-- groups
	{ "<leader>c", group = "code / lsp" },
	{ "<leader>h", group = "git hunks" },
	{ "<leader>X", group = "trouble lists" },
	{ "<leader>F", group = "fzf opts" },

	-- files / misc
	{ "<leader>d", desc = "duplicate file" },
	{ "<leader>p", desc = "toggle theme" },
	{ "<leader>u", desc = "open url" },
	{ "<leader>z", desc = "floating terminal" },
	{ "<leader>f", desc = "fzf files" },
	{ "<leader>g", desc = "grep" },
	{ "<leader>G", desc = "grep under cursor" },
	{ "<leader>x", desc = "chmod +x" },
	{ "<leader>t", desc = "file tree" },
	{ "<leader>R", desc = "reload config" },
	{ "<leader>vs", desc = "vsplit next buf" },
	{ "<leader>w", desc = "write" },
	{ "<leader>W", desc = "toggle wrap" },
	{ "<leader>q", desc = "close buf" },
	{ "<leader>Q", desc = "close buf!" },
	{ "<leader>U", desc = "close ALL buf" },
	{ "<leader>nn", desc = "toggle relative nums" },
	{ "<leader>H", desc = "htop terminal" },
	{ "<leader>l", desc = "twilight dim" },

	-- lsp / diagnostics
	{ "<leader>ca", desc = "code action" },
	{ "<leader>cf", desc = "format" },
	{ "<leader>rn", desc = "rename symbol" },
	{ "<leader>e", desc = "line diagnostics" },
	{ "<leader>T", desc = "diagnostics list" },

	-- git hunks
	{ "<leader>hs", desc = "stage hunk" },
	{ "<leader>hr", desc = "reset hunk" },
	{ "<leader>hp", desc = "preview hunk" },
	{ "<leader>hb", desc = "blame line" },
	{ "<leader>hB", desc = "toggle inline blame" },
	{ "<leader>hd", desc = "diff this" },
})
