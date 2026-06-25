-- blink.cmp: fast autocomplete
-- Tab = accept/next, Shift-Tab = prev, Ctrl-Space = open, Ctrl-e = hide
require("blink.cmp").setup({
	keymap = { preset = "super-tab" },

	appearance = { nerd_font_variant = "mono" },

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
			window = { border = "rounded" },
		},
		menu = {
			border = "rounded",
			draw = { treesitter = { "lsp" } },
		},
		ghost_text = { enabled = true }, -- inline preview of selection
	},

	signature = { enabled = true, window = { border = "rounded" } },

	sources = { default = { "lsp", "path", "snippets", "buffer" } },

	fuzzy = { implementation = "prefer_rust_with_warning" },
})
