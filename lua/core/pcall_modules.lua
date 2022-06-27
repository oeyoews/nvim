local M = {}

function M.setup(modules)
  for package, module in pairs(modules) do
    for _, load_module in ipairs(module) do
      -- plugins.module.xxx
      load_module = "plugins." .. package .. "." .. load_module

      local status_ok, _ = pcall(require, load_module)

      if not status_ok then
        local plugin = "Modules"
        vim.notify("   Failed to load " .. load_module, "warn", {
          title = plugin,
        })
      end
    end
  end
end

return M
