-- indent guides (indent-blankline v3)
require("ibl").setup({
	indent = { char = "│", tab_char = "│" },
	scope = { enabled = true, show_start = false, show_end = false },
	exclude = {
		filetypes = {
			"help", "alpha", "NvimTree", "fterm_htop",
			"Trouble", "trouble", "mason", "lazy", "markdown", "fzf",
		},
	},
})
