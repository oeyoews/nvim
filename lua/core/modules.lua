-- clear (N)vim vanilla color, notice this order, before theme or other color plugins
vim.cmd([[ hi clear ]])

local package = "plugins" -- load package

local modules = {
  enable_modules = {
    "init",
    "perfect", -- performance
    "themes", -- some themes
    "tools", -- some tools
    "ui", -- ui configuration
    "lsp", -- lsp settings
    -- "dap",
  },
}

for _, load_module in ipairs(modules.enable_modules) do
  require(package .. "." .. load_module)
end
