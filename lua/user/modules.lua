-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   modules.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:32 by oeyoews                                  --
--   Updated: 2022/08/18 09:29:23 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

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
    "oeyoews",
    "bootstrap",
    "disable",
    "options",
    "mappings",
    "autocmd",
  },

  -- @ui
  ui = {
    "treesitter", -- friendly highlight your code
    "web_icons",
    "ui",
    "notify",
    "bufferline",
    -- "fidget", -- have some bug
  },

  -- @LANG
  langs = {
    "mason",
    "cmp", -- config completion
    "lspconfig", -- configurate lsp settings
    "null-ls", -- complete lsp configuration
  },

  -- @TOOLS
  tools = {
    "trouble",
    "comment",
    "filetype",
    "header42",
    "persistence",
    "hop", -- jump anywhere
    "whichkey", -- show your key bindings
    "trim", -- delete any blank line and trailing whitespace
    "ranger", -- use ranger in neovim
    "vimtex",
  },
}

--   mappings
vim.keymap.set("n", "<space>fm", function()
  return oeyoews.find_lua_file("lua/user/modules")
end, { desc = "𝐦 edit modules config" })

return M
