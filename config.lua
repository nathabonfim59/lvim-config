--[[
lvim is the global options object


Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

require "user.settings"
require "user.plugins"
require "user.autocommands"

-- LSP configs
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "vscode"
-- lvim.colorscheme = "onedark"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["O"] = { "<cmd>SymbolsOutline<CR>", "Document symbols" }
lvim.builtin.which_key.mappings["n"] = {
    name = "+NvimTree",
    b = {"<cmd>lua require'nvim-tree.lib'.collapse_all()<CR>", "Collapse all foldes" },
    r = {"<cmdNvimTreeRefresh<CR>", "Refresh" }
}

lvim.builtin.which_key.mappings["D"] = {
  name = "+Database",
  u = { "<Cmd>DBUIToggle<Cr>", "Toggle UI" },
  f = { "<Cmd>DBUIFindBuffer<Cr>", "Find buffer" },
  r = { "<Cmd>DBUIRenameBuffer<Cr>", "Rename buffer" },
  q = { "<Cmd>DBUILastQueryInfo<Cr>", "Last query info" },
}

lvim.builtin.which_key.mappings["G"] = {
  name = "+Blanklines",
  i = { "<Cmd>let g:indent_blankline_enabled = v:true<Cr>", "Toggle indent" },
  c = { "<Cmd>let g:indent_blankline_show_current_context = v:true<Cr>", "Toggle Context" },
  s = { "<Cmd>set list<Cr>", "Toggle special chars" },
}
-- Tiling keymaps
lvim.builtin.which_key.mappings["t"] = {
  name = "+Tools",
	-- TODO: Implement open current buffer json playground
  -- j = { "<Cmd>tabe %|set nonu<Cr>", "Open in JSON playground (jqp)" },
  -- q = { "<Cmd>q<Cr>", "Quit" },
}

-- Local history keymappings
lvim.builtin.which_key.mappings["H"] = { "<cmd>LocalHistoryToggle<CR>", "Local history" }

-- Add TODO Telescope support
lvim.builtin.which_key.mappings['l']['t'] = { "<cmd>TodoTelescope<CR>", "Find TODO comments" }

-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header.val = {
"  _______________                                                                           ",
" |[]            |                                                                           ",
" |  __________  |        ███╗   ██╗ █████╗ ████████╗██╗  ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗ ",
" |  | natha- |  |        ████╗  ██║██╔══██╗╚══██╔══╝██║  ██║██╔══██╗██║   ██║██║████╗ ████║ ",
" |  | nael   |  |        ██╔██╗ ██║███████║   ██║   ███████║███████║██║   ██║██║██╔████╔██║ ",
" |  |________|  |        ██║╚██╗██║██╔══██║   ██║   ██╔══██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
" |   ________   |        ██║ ╚████║██║  ██║   ██║   ██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
" |   [ [ ]  ]   |        ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
" \\___[_[_]__]___|                                                                           ",
}

lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.transparent_window = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "php",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.treesitter.rainbow = {
  enable = true,
  extended_mode = true,
  max_file_lines = 10000,
  colors = {
    "Gold",
    "Orchid",
    "DodgerBlue",
    "Cornsilk",
    "Salmon",
    "LawnGreen",
  },
}

-- lvim.builtin.treesitter.indent = { disable = true }
