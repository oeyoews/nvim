local package = "plugins.lsp"

local modules = {
  "lsp",
  "lspinstall",
  "null_ls",
  "lspconfig",
  "fidget",
  "lsp_signature",
  "treesitter",
  "lspsaga",
  "trouble",
  "spellsitter",
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
