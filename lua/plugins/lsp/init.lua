local package = "plugins.lsp"

-- fixme: have an autmoation and ensured install is conflict
local modules = {
  "treesitter",
  "lspinstall", -- preinstall some servers
  "cmp", -- config completion
  "lspconfig", -- config lsp
  "null_ls",
  "fidget",
  "lsp_signature",
  "lspsaga",
  "trouble",
  "spellsitter",
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
