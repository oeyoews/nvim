oeyoews = {}

-- nvim_version
oeyoews.nvim_version = vim.version().minor

-- @options
oeyoews.options = {
  enable_clangd = false,
  enable_cmdheight = false,
  -- @see lspconfig.lua
  enable_lsp = true,
  -- @see lspconfig.lua
  sumneko_lua_locale_cn = false,
  -- @see sta.lua
  toggle_theme_auto = true,
  -- @ref: user.pcall.lua
  -- @TODO: use keybinds to toggle this options in config
  debug_mode = false,
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

vim.keymap.set(
  "n",
  "<space>fo",
  "<cmd>find ~/.config/nvim/lua/modules/utils/oeyoews.lua<cr>",
  { desc = " edit global config" }
)
