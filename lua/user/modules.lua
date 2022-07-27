-- @require: core.init.lua
-- @see init.lua

local M = {}

--- manually specific
M.modules = {
  "utils",
  "ui",
  "langs",
  "tools",
}

---
M.files = {
  -- @utils
  ["utils"] = {
    "impatient",
    "oeyoews",
    "functions",
    "pluginlist",
    "bootstrap",
    "disable",
    "options",
    "mappings",
  },

  -- @ui
  ui = {
    "web_icons",
    "tokyonight",
    "custom", -- need after tokyonight
    "notify",
    "lspsaga", -- setup lspconfig ui
    "bufferline",
    "windline", -- statusline
    "fidget", -- visualize lsp status
  },

  -- @LANG
  langs = {
    "treesitter", -- friendly highlight your code
    "mason",
    "cmp", -- config completion
    "lspconfig", -- configurate lsp settings
    "null-ls", -- complete lsp configuration
    -- "formatter",
  },

  -- @TOOLS
  tools = {
    "nvim_tree",
    "neogen",
    "todo_comments",
    "indent", -- show indent line
    "hop", -- jump anywhere
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
}

vim.keymap.set(
  "n",
  "<space>fm",
  "<cmd>find ~/.config/nvim/lua/user/modules.lua<cr>",
  { desc = "𝐦 edit modules config" }
)

return M
