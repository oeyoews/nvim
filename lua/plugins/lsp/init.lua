local package = "plugins.lsp"

local modules = {
  "treesitter",
  "lspinstall", -- preinstall some servers
  "cmp", -- config completion
  "lspconfig",
  "null-ls",
  "lspsaga",
}

require("core.pcallplus").setup(package, modules)
