oeyoews = {}

-- nvim_version
oeyoews.nvim_version = vim.version().minor

-- @options
oeyoews.options = {
  enable_clangd = false,
  -- @see lspconfig.lua
  enable_lsp = true,
  -- @see lspconfig.lua
  sumneko_lua_locale_cn = false,
  -- @see sta.lua
  toggle_theme_auto = false,
  -- @ref: user.pcall.lua
  -- @TODO: use keybinds to toggle this options in config
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

-- extra binary
oeyoews.mason = {}

local builtin = string.format("%s/builtin/", vim.fn.stdpath("config"))

oeyoews.builtin_plugin = {
  builtin .. "notify",
  builtin .. "telescope",
  builtin .. "tokyonight",
  builtin .. "windline",
  builtin .. "persistence",
}

-- mapping
vim.keymap.set(
  "n",
  "<space>fo",
  "<cmd>find ~/.config/nvim/lua/modules/utils/oeyoews.lua<cr>",
  { desc = " edit global config" }
)
