local package = "plugins.lsp"

local modules = {
  "treesitter",
  "lspconfig",
  "cmp",
  "null_ls",
  "fidget",
  "lsp_signature",
  "lspsaga",
  "trouble",
  "spellsitter",
  "lspinstall", -- WARN: don't modify this order, cmp may be automatically it
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
