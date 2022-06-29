local M = {}

-- PERF: add update command git -C

-- just suit for three layer modules
function M.setup(modules, title, entry)
  -- setup second entry default value
  entry = entry or "modules"
  -- notification title
  title = title or "Modules Messages"

  -- storage error modules in for loop
  local error_modules = {}
  -- PERF: logging?
  local error_logs = {}

  for package, module in pairs(modules) do
    for _, load_module in ipairs(module) do
      local path = { entry, package, load_module }
      -- link path to load module
      connect_path = table.concat(path, ".")
      -- link path use separator for logging
      connect_path2 = table.concat(path, "  ")
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

  -- adjust error or not
  local length = #error_modules

  -- output error modules
  if length > 0 then
    local ok, async = pcall(require, "plenary.async")

    if not ok then
      vim.notify("plenary_async not founded")
      return
    end

    async.run(function()
      vim.notify.async(" Failed to load these modules \n" .. error_msg, "warn", {
        title = title,
        on_open = function(win)
          local buf = vim.api.nvim_win_get_buf(win)
          vim.api.nvim_buf_set_option(buf, "filetype", "lua")
        end,
      }).events.close()
      vim.notify.async(" Error Messages \n" .. error_tree, "error", {
        title = title,
      })
    end)
  end
end

return M
