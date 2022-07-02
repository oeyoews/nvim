-- module: user.lua

local M = {}

M.settings = {
  debug_mode = false, -- @ref: core.utils.pcall
  -- rolling.json default.json v1.0.0.json
  -- @q how to use this
  snapshot = nil, -- @ref: core.utils.bootstrap
}

return M
