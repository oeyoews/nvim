-- module: user.lua

local M = {}

M.settings = {
  debug_mode = false, -- @ref: core.utils.pcall
  -- rolling.json default.json v1.0.0.json
  snapshot = nil,
  -- snapshot = "default.json", -- @ref: core.utils.bootstrap
}

return M