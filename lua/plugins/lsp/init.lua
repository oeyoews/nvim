local package = 'plugins.lsp/'

local modules = {
  'null-ls',
  'lsp',
  'lspconfig',
  'fidget',
  'lspsignature',
  'treesitter',
  'lspsaga',
  'trouble',
  -- 'luapad',
}

for _, load_module in ipairs(modules) do
  require(package .. load_module)
end
