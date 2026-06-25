-- LSP progress + work-done spinner in the corner
require("fidget").setup({
	progress = {
		display = { done_icon = "✓" },
	},
	notification = {
		window = { winblend = 0 },
	},
})
