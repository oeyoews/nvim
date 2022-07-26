oeyoews = {}

-- nvim_version
oeyoews.nvim_version = vim.version().minor

-- @options
oeyoews.options = {
  enable_cmdheight = false, -- util 22/07/11, it's still have some bug
  enable_lsp = true, -- @see lspconfig.lua
  sumneko_lua_locale_cn = false, -- @see lspconfig.lua
  toggle_theme_auto = true, -- @see sta.lua
  debug_mode = false, -- @ref: user.pcall.lua @TODO: use keybinds to toggle this options in config
  snapshot = nil, -- @see core.utils.bootstrap.lua @options: rolling.json, default.json, v1.0.0.json
}

-- @servers @deprecated
oeyoews.servers = {
  "gopls",
  "jsonls",
  "vimls",
  "sumneko_lua",
  "bashls",
  "clangd", -- this install is very slow TODO
  "pylsp", -- support formatting
  "cmake", -- navic not support this @TODO
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
