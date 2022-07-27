-- @module: pcall.lua
-- @ref: modules.utils.init.lua && user.modules.lua

-- depend
local notify = require("notify").async
local _, async = pcall(require, "plenary.async")
-- cutsom
local error_modules = {}
local error_logs = {}
local load_dot_path = nil

-- TODO: rename variable
local M = {}
---@param dir string entry firstly
---@param load_module table module second index
---@param load_files table table module
M.setup = function(dir, load_module, load_files)
  -- local module_get = forget , but different dir bug, can't use
  for _, module in pairs(load_module) do
    for _, file in pairs(load_files[module]) do
      load_dot_path = string.format("%s.%s.%s", dir, module, file)
      local load_status_ok, error_log = pcall(require, load_dot_path)
      if not load_status_ok then
        -- storage error_module in table
        error_modules[#error_modules + 1] = load_dot_path
        -- storage logging message
        error_logs[#error_logs + 1] = error_log
      end
    end
  end

  -- async output message base plenary plugin
  if #error_modules ~= 0 then
    async.run(function()
      notify("Failed to loaded modules \n" .. vim.inspect(error_modules), "info", { title = "Modules" }).events.close()
      if oeyoews.options.debug_mode then
        notify("Error Messages \n" .. vim.inspect(error_logs), "error", { title = "Debug" })
      end
    end)
  end
end

return M
