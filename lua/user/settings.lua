-- Vim options
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.laststatus = 3


vim.cmd[[set formatoptions +=jqrocb]]
-- vim.opt.formatoptions = "jqrocb" -- TODO: Does not work.

-- Colorscheme variation
-- vim.g.tokyonight_style = "night"
-- vim.g.onedark_config = "darker"
require('onedark').setup {
    style = 'warmer'
}
