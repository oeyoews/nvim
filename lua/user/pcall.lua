-- @module: pcall.lua
-- @ref: init.lua

if oeyoews.options.first_install then
  return
end

local notify_ok, notify = pcall(require, "notify")
local error_modules = {}
local error_logs = {}
local load_dot_path = nil
local log_level = "info"

local M = {}
---@param dir string entry firstly
---@param load_module table module second index
---@param load_files table table module
M.setup = function(dir, load_module, load_files)
  for _, module in pairs(load_module) do
    for _, file in pairs(load_files[module]) do
      load_dot_path = string.format("%s.%s.%s", dir, module, file)
      local load_status_ok, error_log = pcall(require, load_dot_path)
      if not load_status_ok then
        error_modules[#error_modules + 1] = load_dot_path
        error_logs[#error_logs + 1] = error_log
      end
    end
  end

  if #error_modules ~= 0 then
    if oeyoews.options.debug_mode then
      error_modules[#error_modules + 1] = error_logs
      log_level = "error"
    end
    if not notify_ok then
      vim.notify("Failed to loaded modules \n" .. vim.inspect(error_modules), log_level)
    end
    -- notify("Failed to loaded modules \n" .. vim.inspect(error_modules), log_level, { title = "Modules" })
  end
end

return M
