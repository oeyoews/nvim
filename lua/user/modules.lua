-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   modules.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:32 by oeyoews                                  --
--   Updated: 2022/08/01 11:37:02 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

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
    "bufferline",
    "windline", -- statusline
  },

  -- @LANG
  langs = {
    "treesitter", -- friendly highlight your code
    "mason",
    "cmp", -- config completion
    "lspconfig", -- configurate lsp settings
    "null-ls", -- complete lsp configuration
  },

  -- @TOOLS
  tools = {
    "header42",
    "persistence",
    "vim_startuptime",
    "nvim_tree",
    "neogen",
    "todo_comments",
    "indent", -- show indent line
    "hop", -- jump anywhere
    "gitsigns", -- show git changes in signcolumn
    "comment", -- fast comment your code
    "autopairs", -- automatically match your half
    "mkdp", -- open markdown preview in your browser
    "tabout", -- jump brackets base nvim-treesitter
    "telescope", -- can do anything
    "whichkey", -- show your key bindings
    "quickrun", -- quickly run your code
    "trim", -- delete any blank line and trailing whitespace
    "icon_picker", -- select so much icons
    "ranger", -- use ranger in neovim
  },
}

vim.keymap.set("n", "<space>fm", function()
  return oeyoews.find_lua_file("lua/user/modules")
end, { desc = "𝐦 edit modules config" })

return M
