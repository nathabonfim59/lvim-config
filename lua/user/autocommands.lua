vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost" }, {
  callback = function()
    require("user.winbar").get_winbar()
  end,
})
