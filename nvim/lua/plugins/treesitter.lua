-- nvim-treesitter (main branch) run directly under vim-plug.
-- NOTE: the old version returned a lazy.nvim spec table, which vim-plug never
-- executed -> treesitter highlighting/indent never actually started. Fixed here.

local langs = {
	"bash", "c", "cpp", "css", "go", "html", "java", "javascript", "json",
	"lua", "markdown", "markdown_inline", "python", "rust", "tsx",
	"typescript", "vim", "vimdoc", "yaml", "toml", "diff", "query",
}

local ok, ts = pcall(require, "nvim-treesitter")
if ok and type(ts.install) == "function" then
	pcall(ts.install, langs) -- async; installs missing parsers
end

-- start highlighting + treesitter indent on these filetypes
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"bash", "sh", "c", "cpp", "css", "go", "html", "java", "javascript",
		"javascriptreact", "json", "lua", "markdown", "python", "rust",
		"typescript", "typescriptreact", "vim", "yaml", "toml", "diff",
	},
	callback = function()
		pcall(vim.treesitter.start)
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

-- catch buffers already loaded before this ran (and once async parsers finish)
for _, buf in ipairs(vim.api.nvim_list_bufs()) do
	if vim.api.nvim_buf_is_loaded(buf) then
		pcall(vim.treesitter.start, buf)
	end
end
