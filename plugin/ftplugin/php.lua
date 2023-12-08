vim.cmd[[setlocal shiftwidth=4]]
vim.cmd[[setlocal tabstop=4]]

-- Disable rarely used LSPs
-- require("lvim.lsp.manager").setup("phpactor")
require("lvim.lsp.manager").setup("tailwindcss")
