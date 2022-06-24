local package = "plugins"

local modules = {
  "packer", -- first plugins list
  "perfect", -- performance
  "themes", -- some themes
  "ui", -- ui configuration
  "tools", -- some tools
  "lsp", -- lsp settings
  "night",
}

require("core.pcallplus").setup(package, modules)
