-- module pcall

local M = {}

function M.setup(package, modules)
  for _, load_module in ipairs(modules) do
    load_module = package .. "." .. load_module

    local status_ok, _ = pcall(require, load_module)
    if not status_ok then
      local plugin = "Modules"
      vim.notify(" Failed to load " .. load_module, "warn", {
        title = plugin,
      })
    end
  end
end

return M
