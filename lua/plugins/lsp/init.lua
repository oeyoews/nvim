local package = "plugins.lsp"

local modules = {
  "lspinstall",
  "treesitter",
  "lsp",
  "null_ls",
  "fidget",
  "lspconfig",
  "lsp_signature",
  "lspsaga",
  "trouble",
  "spellsitter",
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
