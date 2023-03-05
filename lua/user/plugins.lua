
-- Additional Plugins
lvim.plugins = {
  -- Automcompletion
  -- {
  --   "tzachar/cmp-tabnine",
  --   run = "./install.sh",
  --   requires = "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  -- },
  {
      "github/copilot.vim",
      -- config = function()
      --   require("user.copilot").config()
      -- end,
      -- disable = not lvim.builtin.sell_your_soul_to_devil.active or lvim.builtin.sell_your_soul_to_devil.prada,
    },
	{
		"zbirenbaum/copilot.lua",
		after = "nvim-cmp",
		requires = { "zbirenbaum/copilot-cmp" },
		event = { "InsertEnter" },
		config = function()
			vim.defer_fn(function()
				require("copilot").setup {
					plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
				}
				end, 100)
		end,
		-- config = function()
		-- local cmp_source = { name = "copilot", group_index = 2 }
		-- table.insert(lvim.builtin.cmp.sources, cmp_source)
		-- vim.defer_fn(function()
		--   require("copilot").setup()
		-- end, 100)
		-- end,
		-- disable = not lvim.builtin.sell_your_soul_to_devil.prada,
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
	{"EdenEast/nightfox.nvim"},
	{"sainnhe/sonokai"},
	{"marko-cerovac/material.nvim"},
	{"Mofiqul/vscode.nvim"},
	{"rafamadriz/neon"},

  -- Highlight hex and rgb colors
  {
    "norcalli/nvim-colorizer.lua",
    config = function ()
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
    requires = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion"
    },
    config = function ()
      require("user.dadbod").config()
    end
  },

  -- Local history on VIM
  {
		"dinhhuy258/vim-local-history",
    config = function ()
      require("user.localhistory").config()
    end
  },

	-- TODO manager
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
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
		requires = "nvim-treesitter/nvim-treesitter",
		config = require("user.sticky-scroll").config()
	},
	-- Add DBML Support
	{
		"jidn/vim-dbml"
	}
}
