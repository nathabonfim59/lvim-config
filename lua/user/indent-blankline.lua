local M = {}

M.config = function()
	vim.opt.list = false
	vim.opt.listchars:append("space:⋅")
	vim.opt.listchars:append("eol:↴")

	require("indent_blankline").setup {
    char_highlight_list = {
			"VertSplit"
		},
	}
end

return M

