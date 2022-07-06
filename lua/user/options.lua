-- module: user.lua

local settings = {}

settings = {
  sumneko_lua_locale_cn = false,
  debug_mode = true, -- @ref: core.utils.pcall
  -- rolling.json default.json v1.0.0.json
  snapshot = nil,
  -- snapshot = "default.json", -- @ref: core.utils.bootstrap
}

return settings
