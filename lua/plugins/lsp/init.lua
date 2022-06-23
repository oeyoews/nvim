local package = "plugins.lsp"

local modules = {
  "treesitter",
  "lspinstall", -- preinstall some servers
  "cmp", -- config completion
  "lspconfig",
  "lspsaga",
}

require("core.pcallplus").setup(package, modules)
