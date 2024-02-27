-- Additional Plugins
lvim.plugins = {
	-- Tabnine (uncomment to enable)
	-- {
	--   "tzachar/cmp-tabnine",
	--   run = "./install.sh",
	--   requires = "hrsh7th/nvim-cmp",
	--   event = "InsertEnter",
	-- },
	-- Github Copilot
	{
		"zbirenbaum/copilot.lua",
		after = "nvim-cmp",
		dependencies = { "zbirenbaum/copilot-cmp" },
		event = { "InsertEnter" },
		config = function()
			require("copilot").setup {
				plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
			}
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup {
				formatters = {
					insert_text = require("copilot_cmp.format").remove_existing,
				},
			}
		end,
	},

	-- Change sorroundings
	{
		"tpope/vim-surround"
	},

	-- Rainbow brackets
	{ "ChristianChiarulli/nvim-ts-rainbow" },

	-- Formated symbols
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
		cmd = "SymbolsOutline",
	},

	-- Colorschemes
	{
		"navarasu/onedark.nvim",
		config = function()
			require('onedark').setup {
				style = 'warmer'
			}
		end
	},
	{ "EdenEast/nightfox.nvim" },
	{ "sainnhe/sonokai" },
	{ "marko-cerovac/material.nvim" },
	{ "Mofiqul/vscode.nvim" },
	{ "rafamadriz/neon" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},

	-- Highlight hex and rgb colors
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("user.colorizer").config()
		end
	},

	-- Support editor config
	{
		'gpanders/editorconfig.nvim'
	},

	-- Track coding hours
	{
		'wakatime/vim-wakatime'
	},

	-- Database completion and connection
	{
		"tpope/vim-dadbod",
		dependencies = {
			"kristijanhusak/vim-dadbod-ui",
			"kristijanhusak/vim-dadbod-completion"
		},
		config = function()
			require("user.dadbod").config()
		end
	},

	-- Local history on VIM
	{
		"dinhhuy258/vim-local-history",
		config = function()
			require("user.localhistory").config()
		end
	},

	-- TODO manager
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("user.todo").config()
		end
	},

	-- Highlight unique words to use with 'fF'/'tT' motions
	{
		"unblevable/quick-scope",
		config = require("user.quick-scope").config()
	},

	-- Caching and other performance improvements
	{
		"lewis6991/impatient.nvim"
	},
	-- Line guides for indentation
	{
		"lukas-reineke/indent-blankline.nvim",
		config = require("user.indent-blankline").config()
	},
	-- Sticky scroll context (with treesitter)
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = require("user.sticky-scroll").config()
	},
	-- Add DBML Support
	{
		"jidn/vim-dbml"
	},
	-- Enable inlay hints (intellij-like virtual paramaters)
	{
		"lvimuser/lsp-inlayhints.nvim",
	},
	-- Add support for opening in the same instance
	{
		"willothy/flatten.nvim",
		-- config = true,
		-- or pass configuration with
		opts = {
			window = {
				open = "alternate"
			}
		},
		-- Ensure that it runs first to minimize delay when opening file from terminal
		lazy = false,
		priority = 1001,
	},
}

lvim.transparent_window = true
