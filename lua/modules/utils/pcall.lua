local M = {}

-- PERF: add update command git -C

-- just suit for three layer modules
function M.setup(modules, entry)
  -- setup second entry default value
  entry = entry or "modules"

  -- storage error modules in for loop
  local error_modules = {}

  for package, module in pairs(modules) do
    for _, load_module in ipairs(module) do
      local path = { entry, package, load_module }
      -- link path to load module
      connect_path = table.concat(path, ".")
      -- PERF: logging?
      local status_ok, _ = pcall(require, connect_path)
      -- link path use separator for logging
      connect_path2 = table.concat(path, "  ")
      if not status_ok then
        -- storage error_module in tabale
        error_modules[#error_modules + 1] = connect_path2
      end
    end
  end

  -- notification title
  local title = "Modules Messages"

  -- link error_modules path from for loop
  local error_msg = table.concat(error_modules, "\n")

  -- adjust error or not
  local length = #error_modules

  -- output error modules
  if length > 0 then
    vim.notify(" Failed to load these modules \n" .. error_msg, "info", {
      title = title,
    })
  end
end

return M
