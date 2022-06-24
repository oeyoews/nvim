local package = "plugins"

local modules = {
  "external",
  "packer", -- first plugins list
  "perfect", -- performance
  "ui", -- ui configuration
  "tools", -- some tools
  "lsp", -- lsp settings
  "night",
}

require("core.pcallplus").setup(package, modules)
