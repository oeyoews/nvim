-- @module: pcall.lua
-- @ref: core.utils.init.lua && user.modules.lua

local notify = require("notify").async
local _, async = pcall(require, "plenary.async")
local error_modules = {}
local error_logs = {}
local error_msg = {}
local error_tree = {}
local load_dot_path = nil
local debug_format_msg = nil

-- TODO: rename variable
local M = {}
---@param dir string entry firstly
---@param load_module table module second index
---@param load_files table table module
M.setup = function(dir, load_module, load_files)
  for _, module in pairs(load_module) do
    for _, file in pairs(load_files[module]) do
      load_dot_path = string.format("%s.%s.%s", dir, module, file)
      debug_format_msg = string.format("%s  %s  %s", dir, module, file)
      local load_status_ok, error_log = pcall(require, load_dot_path)
      if not load_status_ok then
        -- storage error_module in tabale
        error_modules[#error_modules + 1] = debug_format_msg
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
