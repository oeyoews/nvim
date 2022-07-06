-- module: user.lua

-- vim.g.enable_lsp = true :TODO
local settings = {}

settings = {
  enable_lsp = true, -- @see lspconfig.lua
  toggle_theme_auto = true, -- @see sta.lua
  sumneko_lua_locale_cn = false, -- @see lspconfig.lua
  debug_mode = true, -- @ref: core.utils.pcall
  -- rolling.json default.json v1.0.0.json
  snapshot = nil, -- @see bootstrap.lua
  -- snapshot = "default.json", -- @ref: core.utils.bootstrap
}

return settings
