-- Defines the syntax for CakePHP's .ctp files as PHP
vim.cmd([[
augroup FiletypeCTP
  autocmd!
  autocmd BufEnter *.ctp lua vim.api.nvim_buf_set_option(0, 'syntax', 'php')
augroup END
]])
