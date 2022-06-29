local M = {}

-- PERF: add update command git -C
-- PERF: add log file
-- suit for three layer modules
function M.setup(modules, entry)
  -- setup second entry default value
  entry = entry or "modules"

  local title = "Modules Messages"
  local total_error = {}

  for package, module in pairs(modules) do
    for _, load_module in ipairs(module) do
      local path = { entry, package, load_module }
      connect_path = table.concat(path, ".")
      local status_ok, _ = pcall(require, connect_path)

      connect_path2 = table.concat(path, "  ")
      if not status_ok then
        total_error[#total_error + 1] = connect_path2
      end
    end
  end

  local error_msg = table.concat(total_error, "\n")

  local length = #total_error

  if length > 0 then
    vim.notify(" Failed to load these modules \n" .. error_msg, "info", {
      title = title,
    })
  end
end

return M
