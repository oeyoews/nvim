-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   oeyoews.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:49 by oeyoews                                  --
--   Updated: 2022/08/02 01:58:28 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- global lua variables
oeyoews = {}

-- extra binary
oeyoews.mason = {}

local builtin = string.format("%s/builtin/", vim.fn.stdpath("config"))

oeyoews.autocmd = vim.api.nvim_create_autocmd
-- nvim_version
oeyoews.nvim_version = vim.version().minor
oeyoews.nvim_full_version_info = string.format(
  "%s.%s.%s",
  vim.version().major,
  vim.version().minor,
  vim.version().patch
)

-- @options
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
  "cmake",
  "gopls",
  "jsonls",
  "vimls",
  "sumneko_lua",
  "bashls",
  "pylsp",
  "yamlls",
}

oeyoews.builtin_plugin = {
  builtin .. "windline",
  builtin .. "notify",
  builtin .. "telescope",
  builtin .. "tokyonight",
  builtin .. "persistence",
  builtin .. "header42",
  builtin .. "lspkind",
}

--   mappings
vim.keymap.set("n", "<space>fo", "<cmd>find ~/.config/nvim/lua/modules/utils/oeyoews.lua<cr>", {
  desc = " edit global config",
})

-- load global variables
require("modules.utils.functions")
require("modules.utils.pluginlist")
