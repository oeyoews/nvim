local package = "plugins.lsp"

local modules = {
  "treesitter",
  "lspinstall", -- preinstall some servers
  -- "lua_dev",
  "cmp", -- config completion
  "null_ls",
  "lspconfig",
  "clangd_extensions",
  "fidget",
  "lsp_signature",
  "lspsaga",
  "trouble",
  "spellsitter",
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
