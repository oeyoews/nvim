local package = "plugins"

local modules = {
  "packer", -- first plugins list
  "perfect", -- performance
  "night",
  "external",
  "ui", -- ui configuration
  "tools", -- some tools
  "lsp", -- lsp settings
}

require("core.pcallplus").setup(package, modules)
