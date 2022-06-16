local package = "plugins.lsp"

local modules = {
  "treesitter",
  "lspinstall", -- preinstall some servers
  -- "lua_dev",
  "cmp", -- config completion
  "clangd_extensions",
  "lspconfig",
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
