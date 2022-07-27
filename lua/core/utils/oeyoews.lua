oeyoews = {}

-- nvim_version
oeyoews.nvim_version = vim.version().minor

-- @options
oeyoews.options = {
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
  -- @see core.utils.bootstrap.lua
  -- @options: rolling.json, default.json, v1.0.0.json
  snapshot = nil,
}

-- @servers @deprecated
oeyoews.servers = {
  "gopls",
  "jsonls",
  "vimls",
  "sumneko_lua",
  "bashls",
  -- this install is very slow TODO
  "clangd",
  -- support formatting
  "pylsp",
  -- navic not support this @TODO
  "cmake",
}

-- extra binary
oeyoews.mason = {
  -- for null-ls
  "stylua",
  "codespell",
  -- for formatter
  "prettier",
  -- bashls
  "shellcheck",
}

vim.keymap.set(
  "n",
  "<space>fo",
  "<cmd>find ~/.config/nvim/lua/core/utils/oeyoews.lua<cr>",
  { desc = " edit global config" }
)
