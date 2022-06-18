-- @FileName: modules.lua
-- @Description: module manager

-- clear (N)vim vanilla color, notice this order, before theme or other color plugins
-- vim.cmd([[ hi clear ]])

-- load package
local package = "plugins"

local modules = {
  enable_modules = {
    "plugins", -- first plugins list
    "perfect", -- performance
    "themes", -- some themes
    "ui", -- ui configuration
    "tools", -- some tools
    "lsp", -- lsp settings
  },
}

for _, load_module in ipairs(modules.enable_modules) do
  load_module = package .. "." .. load_module

  local status_ok, _ = pcall(require, load_module)

  if not status_ok then
    -- vim.api.nvim_err_writeln("Failed to load " .. load_module .. "\n\n")
    local plugin = "Modules"
    vim.notify("Failed to load " .. load_module, "warn", {
      title = plugin,
    })
  end
end
