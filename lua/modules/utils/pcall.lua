local M = {}

function M.setup(modules, entry)
  -- setup second entry default value
  entry = entry or "modules"

  for package, module in pairs(modules) do
    for _, load_module in ipairs(module) do
      local path = { entry, package, load_module }
      connect_path = table.concat(path, ".")
      local status_ok, _ = pcall(require, connect_path)

      if not status_ok then
        local plugin = "Modules"
        vim.notify("   Failed to load " .. connect_path, "warn", {
          title = plugin,
        })
      end
    end
  end
end

return M
