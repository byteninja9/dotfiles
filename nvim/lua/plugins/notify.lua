-- pretty notifications; also becomes the handler for vim.notify
local notify = require("notify")

notify.setup({
	stages = "fade",
	timeout = 2500,
	render = "compact",
	fps = 60,
	top_down = true,
	max_width = 60,
})

vim.notify = notify
