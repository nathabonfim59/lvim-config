-- Defines the syntax for opencart template files
vim.cmd([[
augroup FiletypeTPL
  autocmd!
  autocmd BufEnter *.tpl lua vim.api.nvim_buf_set_option(0, 'syntax', 'php')
augroup END
]])

require("lvim.lsp.manager").setup("html")
