
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
  }
}
