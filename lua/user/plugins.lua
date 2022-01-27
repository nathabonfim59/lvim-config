
-- Additional Plugins
lvim.plugins = {
  -- Automcompletion
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
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
    "joshdick/onedark.vim"
  },

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
  }
}
