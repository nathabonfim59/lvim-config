vim.cmd[[setlocal shiftwidth=2]]
vim.cmd[[setlocal tabstop=2]]

-- Set up LSP for Dart
if vim.fn.executable("dart") == 1 then
	require("lspconfig").dartls.setup({
	})

	-- Define a custom mapping for the LSP if the dart sdk is available

	-- Open docs with Shift + K
	vim.cmd[[nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>]]

	-- Go to definition with gd
	vim.cmd[[nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>]]
end

