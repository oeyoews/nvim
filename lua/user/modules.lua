-- @require: core.init.lua
-- @see init.lua

local M = {}

M.utils = {
  "utils",
}

M.modules = {
  "ui",
  "langs",
  "tools",
  "misc",
}

M.m3 = {
  -- @utils
  utils = {
    "bootstrap",
    "impatient",
    "night",
    "disable",
    "options",
    "mappings",
    "functions", -- need after mappings
  },

  -- @ui
  ui = {
    "tokyonight",
    "custom", -- need after tokyonight
    "notify",
    "hlargs",
    "lspsaga", -- setup lspconfig ui
    "bufferline",
    "windline", -- statusline
    "fidget", -- visualize lsp status
  },

  -- @LANG
  langs = {
    "treesitter", -- friendly highlight your code
    "lspinstall", -- preinstall some servers
    "cmp", -- config completion
    "lspconfig", -- configurate lsp settings
    "null-ls", -- complete lsp configuration
    "formatter",
  },

  -- @TOOLS
  tools = {
    "neogen",
    "todo_comments",
    "trouble",
    "indent", -- show indent line
    "hop", -- jump anywhere
    "colorizer", -- show color in neovim
    "gitsigns", -- show git changes in signcolumn
    "comment", -- fast comment your code
    "autopairs", -- automatically match your half
    "mkdp", -- open markdown preview in your browser
    "persistence", -- session manager
    "tabout", -- jump brackets base nvim-treesitter
    "telescope", -- can do anything
    "whichkey", -- show your key bindings
    "quickrun", -- quickly run your code
    "trim", -- delete any blank line and trailing whitespace
    "icon_picker", -- select so much icons
    "ranger", -- use ranger in neovim
  },

  -- @deprecate_config
  misc = {
    -- "project",
    -- "highstr", -- highlight select text
    -- "neorg", -- replace emace org mode
    -- "toggleterm", -- embed terminal
    -- "calendar", -- GTD?
    -- "venn", -- drawing diagram
    -- "color_picker", -- color picker
  },
}

return M
