local m = {}

m.config = function()
	vim.cmd("let g:local_history_path = '.history'")

	vim.cmd("let g:local_history_max_changes = 200")

	vim.cmd([[
		let g:local_history_exclude = [
		\	'**/node_modules/**',
		\	'**/vendor/**',
		\]
	]])
end

return m
