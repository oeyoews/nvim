-- @module: pcall.lua
-- @ref: core.utils.init.lua && user.modules.lua

local M = {}
--- just suit for three layer modules
---@param entry string
---@param modules string
M.setup = function(entry, modules, m3)
  -- storage error modules in for loop
  local error_modules = {}
  -- PERF: logging?
  local error_logs = {}

  for _, module in ipairs(modules) do
    for _, load_module in ipairs(m3[module]) do
      local path = { entry, module, load_module }
      -- link path to load module
      connect_path = table.concat(path, ".")
      -- link path use separator for logging
      connect_path2 = table.concat(path, "  ")
      -- local status_ok, _ = pcall(require, connect_path)
      local status_ok, error_log = pcall(require, connect_path)
      if not status_ok then
        -- storage error_module in tabale
        error_modules[#error_modules + 1] = connect_path2
        -- storage logging message
        error_logs[#error_logs + 1] = error_log
      end
    end
  end

  -- link error_modules path from for loop
  local error_msg = table.concat(error_modules, "\n")

  local error_tree = table.concat(error_logs, "\n")

  local async = require("plenary.async")
  local notify = require("notify").async
  local debug_mode = require("user.options").debug_mode

  if #error_modules ~= 0 then
    async.run(function()
      notify("Failed to loaded modules \n" .. error_msg, "info", { title = "Modules" }).events.close()
      if debug_mode then
        notify("Error Messages \n" .. error_tree, "error", { title = "Debug" })
      end
    end)
  end
end

return M
