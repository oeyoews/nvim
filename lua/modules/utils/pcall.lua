local M = {}

-- suit for three layer modules
function M.setup(modules, entry)
  -- setup second entry default value
  entry = entry or "modules"

  local title = "Modules"
  local total_error = {}

  for package, module in pairs(modules) do
    for _, load_module in ipairs(module) do
      local path = { entry, package, load_module }
      connect_path = table.concat(path, ".")
      local status_ok, _ = pcall(require, connect_path)

      if not status_ok then
        total_error[#total_error + 1] = connect_path
      end
    end
  end

  local error_msg = table.concat(total_error, "\n")

  local length = #total_error

  if length >= 1 then
    vim.notify("Failed to load these modules\n" .. error_msg, "warn", {
      title = title,
    })
  end
end

return M
