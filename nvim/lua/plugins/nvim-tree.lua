-- per-language colored icons come from nvim-web-devicons (already installed).
-- it picks the right glyph per filetype automatically (py, ts, json, md, lock...).
require("nvim-web-devicons").setup({
	color_icons = true,
	default = true,
})

require("nvim-tree").setup({
	hijack_netrw = true,                                  -- replace netrw
	hijack_directories = { enable = true, auto_open = true }, -- `nvim .` opens the tree
	diagnostics = { enable = true, show_on_dirs = true }, -- LSP error badges on files/dirs
	modified = { enable = true },                         -- mark unsaved files
	renderer = {
		group_empty = true,        -- collapse single-child dirs (a/b/c -> a/b/c)
		highlight_git = true,      -- color names by git status
		root_folder_label = ":t",  -- show only the basename as root
		icons = {
			-- files get language icons from devicons; folders use the glyph set below
			web_devicons = {
				file   = { enable = true, color = true },
				folder = { enable = false, color = true },
			},
			show = {
				file = true,           -- <- was false: language icons now ON
				folder = true,         -- <- was false: folder icon now ON
				folder_arrow = true,
				git = true,
			},
		},
	},
	view = {
		width = 32,                -- a bit wider so icon + longer names fit
		side = 'left',
	},
	sync_root_with_cwd = true, --fix to open cwd with tree
	respect_buf_cwd = true,
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
		update_root = true,
	},
})

vim.g.nvim_tree_respect_buf_cwd = 1

-- `nvim .` / `nvim <dir>`: cd into it and open the tree instead of netrw
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function(data)
		if vim.fn.isdirectory(data.file) == 1 then
			vim.cmd.cd(data.file)
			require("nvim-tree.api").tree.open()
		end
	end,
})

-- use g? for bindings help while in tree
