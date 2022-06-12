local M = {}

M.quickscope_filetype_exclude = {
  "help",
  "startify",
  "dashboard",
  "packer",
  "neogitstatus",
  "NvimTree",
  "Trouble",
  "alpha",
  "lir",
  "Outline",
  "spectre_panel",
  "toggleterm",
}

M.config = function()
	-- Trigger a highlight in the appropriate direction when pressing these keys:
	vim.cmd("let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']")
end

return M
