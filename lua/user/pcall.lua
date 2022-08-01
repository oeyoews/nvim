-- @module: pcall.lua
-- @ref: init.lua

local notify_ok, notify = pcall(require, "notify")
local error_modules = {}
local error_logs = {}
local load_dot_path = nil
local log_level = "error"

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

  -- use io.write to store error messages
  if packer_bootstrap then
    return
  end

  if #error_modules ~= 0 then
    -- @todo write to files and just use one tip to note
    -- vim.notify("You got an warn") return
    error_modules[#error_modules + 1] = vim.inspect(error_logs)
    local fmt_msg = string.format(
      [[
 # Failed Loaded Modules

 %s]],
      vim.inspect(error_modules)
    )

    if not notify_ok then
      vim.notify(fmt_msg, log_level)
    else
      notify(fmt_msg, log_level, {
        title = "Modules Msg",
      })
    end
  end
end

return M
