-- @module: pcall.lua
-- @ref: core.utils.init.lua && user.modules.lua

local notify = require("notify").async
local _, async = pcall(require, "plenary.async")
local error_modules = {}
local error_logs = {}
local error_msg = {}
local error_tree = {}
local connect_path = nil
local connect_path2 = nil

-- TODO: rename variable
local M = {}
---@param entry string entry firstly
---@param m2 table module second index
---@param m3 table table module
M.setup = function(entry, m2, m3)
  for _, module in ipairs(m2) do
    for _, load_module in ipairs(m3[module]) do
      connect_path = string.format("%s.%s.%s", entry, module, load_module)
      connect_path2 = string.format("%s  %s  %s", entry, module, load_module)
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
  error_msg = table.concat(error_modules, "\n")
  error_tree = table.concat(error_logs, "\n")

  -- async output message base plenary plugin
  if #error_modules ~= 0 then
    async.run(function()
      notify("Failed to loaded modules \n" .. error_msg, "info", { title = "Modules" }).events.close()
      if oeyoews.options.debug_mode then
        notify("Error Messages \n" .. error_tree, "error", { title = "Debug" })
      end
    end)
  end
end

return M
