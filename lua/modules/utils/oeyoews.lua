-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   oeyoews.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:49 by oeyoews                                  --
--   Updated: 2022/08/11 15:19:42 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- global lua variables
oeyoews = {}

oeyoews.home = os.getenv("HOME")

-- extra binary
oeyoews.mason = {}

oeyoews.completion = {}

oeyoews.lazyload = require("user.lazyload")

-- api
oeyoews.autocmd = vim.api.nvim_create_autocmd
oeyoews.mygroup = vim.api.nvim_create_augroup("OeyoewGroup", {})
-- nvim_version
oeyoews.nvim_version = vim.version().minor
oeyoews.nvim_full_version_info =
  string.format("%s.%s.%s", vim.version().major, vim.version().minor, vim.version().patch)

-- options
oeyoews.options = {
  enable_clangd = true,
  -- @see lspconfig.lua
  enable_lsp = true,
  -- @see lspconfig.lua
  sumneko_lua_locale_cn = false,
  -- @see sta.lua
  toggle_theme_auto = true,
  -- @ref: user.pcall.lua
  -- TODO: use keybinds to toggle this options in config
  -- @see modules.utils.bootstrap.lua
  -- @options: rolling.json, default.json, v1.0.0.json
  snapshot = nil,
}

-- @servers @deprecated
oeyoews.servers = {
  "sumneko_lua",
  -- "cmake",
  -- "gopls",
  -- "jsonls",
  -- "vimls",
  -- "bashls",
  -- "pylsp",
  -- "yamlls",
  "texlab",
}

oeyoews.builtin = string.format("%s/builtin/", vim.fn.stdpath("config"))

-- use nvim info, dont modify it to pluginlist
oeyoews.builtin_plugin = {
  oeyoews.builtin .. "windline",
  oeyoews.builtin .. "notify",
  oeyoews.builtin .. "telescope",
  oeyoews.builtin .. "tokyonight",
  oeyoews.builtin .. "persistence",
  oeyoews.builtin .. "header42",
  oeyoews.builtin .. "lspkind",
  oeyoews.builtin .. "lspformat",
}

-- must global function
oeyoews.completion.edit = function()
  local ft = {
    "norg",
    "tid",
    "lua",
    "md",
    "txt",
    "tex",
  }
  table.sort(ft)
  return table.concat(ft, "\n")
end

-- load global variables
require("modules.utils.functions")
require("modules.utils.pluginlist")

--   mappings
vim.keymap.set("n", "<space>fo", function()
  return oeyoews.find_lua_file("lua/modules/utils/oeyoews")
end, {
  desc = " edit global config",
})
