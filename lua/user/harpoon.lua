local M = {}

M.config = function()
	Harpoon = require('harpoon')
	Harpoon:setup({
		settings = {
			sync_on_ui_close = true,
		},
		cmd = {
			add = function(possible_value)
				-- get the current line idx
				local idx = vim.fn.line(".")

				-- read the current line
				local cmd = vim.api.nvim_buf_get_lines(0, idx - 1, idx, false)[1]
				if cmd == nil then
					return nil
				end

				return {
					value = cmd,
					-- context = { ... any data you want ... },
				}
			end
		}
	})

	-- basic telescope configuration
	function HarpoonTelescope(harpoon_files)
		local conf = require("telescope.config").values
		local file_paths = {}
		for _, item in ipairs(harpoon_files.items) do
			table.insert(file_paths, item.value)
		end

		require("telescope.pickers").new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		}):find()
	end
end
